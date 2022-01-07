
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sk_buff {int data; } ;
struct net_device {int dummy; } ;
struct TYPE_10__ {int seg_pkt_cnt; int sw_err_cnt; } ;
struct hns3_enet_ring {size_t next_to_clean; int pending_buf; unsigned int pull_len; scalar_t__ frag_num; int syncp; TYPE_5__ stats; int * tail_skb; struct sk_buff* skb; TYPE_4__* tqp_vector; TYPE_3__* tqp; struct hns3_desc_cb* desc_cb; } ;
struct hns3_desc_cb {int reuse_flag; int priv; } ;
struct TYPE_9__ {int napi; } ;
struct TYPE_8__ {TYPE_2__* handle; } ;
struct TYPE_6__ {struct net_device* netdev; } ;
struct TYPE_7__ {TYPE_1__ kinfo; } ;


 int ALIGN (unsigned int,int) ;
 int ENOMEM ;
 int HNS3_NEED_ADD_FRAG ;
 unsigned int HNS3_RX_HEAD_SIZE ;
 int __skb_put (struct sk_buff*,unsigned int) ;
 unsigned int eth_get_headlen (struct net_device*,unsigned char*,unsigned int) ;
 int hns3_nic_reuse_page (struct sk_buff*,int ,struct hns3_enet_ring*,unsigned int,struct hns3_desc_cb*) ;
 int hns3_rl_err (struct net_device*,char*) ;
 scalar_t__ likely (int) ;
 int memcpy (int ,unsigned char*,int ) ;
 struct sk_buff* napi_alloc_skb (int *,unsigned int) ;
 int next_to_clean ;
 scalar_t__ numa_mem_id () ;
 scalar_t__ page_to_nid (int ) ;
 int prefetchw (int ) ;
 int put_page (int ) ;
 int ring_ptr_move_fw (struct hns3_enet_ring*,int ) ;
 int u64_stats_update_begin (int *) ;
 int u64_stats_update_end (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int hns3_alloc_skb(struct hns3_enet_ring *ring, unsigned int length,
     unsigned char *va)
{

 struct hns3_desc_cb *desc_cb = &ring->desc_cb[ring->next_to_clean];
 struct net_device *netdev = ring->tqp->handle->kinfo.netdev;
 struct sk_buff *skb;

 ring->skb = napi_alloc_skb(&ring->tqp_vector->napi, HNS3_RX_HEAD_SIZE);
 skb = ring->skb;
 if (unlikely(!skb)) {
  hns3_rl_err(netdev, "alloc rx skb fail\n");

  u64_stats_update_begin(&ring->syncp);
  ring->stats.sw_err_cnt++;
  u64_stats_update_end(&ring->syncp);

  return -ENOMEM;
 }

 prefetchw(skb->data);

 ring->pending_buf = 1;
 ring->frag_num = 0;
 ring->tail_skb = ((void*)0);
 if (length <= HNS3_RX_HEAD_SIZE) {
  memcpy(__skb_put(skb, length), va, ALIGN(length, sizeof(long)));


  if (likely(page_to_nid(desc_cb->priv) == numa_mem_id()))
   desc_cb->reuse_flag = 1;
  else
   put_page(desc_cb->priv);

  ring_ptr_move_fw(ring, next_to_clean);
  return 0;
 }
 u64_stats_update_begin(&ring->syncp);
 ring->stats.seg_pkt_cnt++;
 u64_stats_update_end(&ring->syncp);

 ring->pull_len = eth_get_headlen(netdev, va, HNS3_RX_HEAD_SIZE);
 __skb_put(skb, ring->pull_len);
 hns3_nic_reuse_page(skb, ring->frag_num++, ring, ring->pull_len,
       desc_cb);
 ring_ptr_move_fw(ring, next_to_clean);

 return 1;
}
