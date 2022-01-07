
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int len; int data_len; int truesize; struct sk_buff* next; } ;
struct hns3_enet_ring {int next_to_clean; int desc_num; scalar_t__ frag_num; int pending_buf; struct sk_buff* tail_skb; TYPE_1__* tqp_vector; struct hns3_desc_cb* desc_cb; struct hns3_desc* desc; } ;
struct hns3_desc_cb {int dummy; } ;
struct TYPE_6__ {int size; int bd_base_info; } ;
struct hns3_desc {TYPE_2__ rx; } ;
struct TYPE_8__ {int dev; } ;
struct TYPE_7__ {struct sk_buff* frag_list; } ;
struct TYPE_5__ {TYPE_4__ napi; } ;


 int BIT (int ) ;
 int ENXIO ;
 int HNS3_RXD_FE_B ;
 int HNS3_RXD_VLD_B ;
 int HNS3_RX_HEAD_SIZE ;
 scalar_t__ MAX_SKB_FRAGS ;
 int dma_rmb () ;
 scalar_t__ hns3_buf_size (struct hns3_enet_ring*) ;
 int hns3_nic_reuse_page (struct sk_buff*,int ,struct hns3_enet_ring*,int ,struct hns3_desc_cb*) ;
 int hns3_rl_err (int ,char*) ;
 scalar_t__ le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 struct sk_buff* napi_alloc_skb (TYPE_4__*,int ) ;
 int next_to_clean ;
 int ring_ptr_move_fw (struct hns3_enet_ring*,int ) ;
 TYPE_3__* skb_shinfo (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int hns3_add_frag(struct hns3_enet_ring *ring, struct hns3_desc *desc,
    struct sk_buff **out_skb, bool pending)
{
 struct sk_buff *skb = *out_skb;
 struct sk_buff *head_skb = *out_skb;
 struct sk_buff *new_skb;
 struct hns3_desc_cb *desc_cb;
 struct hns3_desc *pre_desc;
 u32 bd_base_info;
 int pre_bd;




 if (pending) {
  pre_bd = (ring->next_to_clean - 1 + ring->desc_num) %
    ring->desc_num;
  pre_desc = &ring->desc[pre_bd];
  bd_base_info = le32_to_cpu(pre_desc->rx.bd_base_info);
 } else {
  bd_base_info = le32_to_cpu(desc->rx.bd_base_info);
 }

 while (!(bd_base_info & BIT(HNS3_RXD_FE_B))) {
  desc = &ring->desc[ring->next_to_clean];
  desc_cb = &ring->desc_cb[ring->next_to_clean];
  bd_base_info = le32_to_cpu(desc->rx.bd_base_info);

  dma_rmb();
  if (!(bd_base_info & BIT(HNS3_RXD_VLD_B)))
   return -ENXIO;

  if (unlikely(ring->frag_num >= MAX_SKB_FRAGS)) {
   new_skb = napi_alloc_skb(&ring->tqp_vector->napi,
       HNS3_RX_HEAD_SIZE);
   if (unlikely(!new_skb)) {
    hns3_rl_err(ring->tqp_vector->napi.dev,
         "alloc rx fraglist skb fail\n");
    return -ENXIO;
   }
   ring->frag_num = 0;

   if (ring->tail_skb) {
    ring->tail_skb->next = new_skb;
    ring->tail_skb = new_skb;
   } else {
    skb_shinfo(skb)->frag_list = new_skb;
    ring->tail_skb = new_skb;
   }
  }

  if (ring->tail_skb) {
   head_skb->truesize += hns3_buf_size(ring);
   head_skb->data_len += le16_to_cpu(desc->rx.size);
   head_skb->len += le16_to_cpu(desc->rx.size);
   skb = ring->tail_skb;
  }

  hns3_nic_reuse_page(skb, ring->frag_num++, ring, 0, desc_cb);
  ring_ptr_move_fw(ring, next_to_clean);
  ring->pending_buf++;
 }

 return 0;
}
