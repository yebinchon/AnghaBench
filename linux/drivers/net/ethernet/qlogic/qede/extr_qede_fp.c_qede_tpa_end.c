
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; int ip_summed; int protocol; } ;
struct qede_rx_queue {int data_direction; int dev; struct qede_agg_info* tpa_info; } ;
struct qede_fastpath {struct qede_rx_queue* rxq; } ;
struct qede_dev {int ndev; } ;
struct TYPE_3__ {scalar_t__ page_offset; int mapping; } ;
struct qede_agg_info {scalar_t__ state; scalar_t__ frag_id; int tpa_start_fail; struct sk_buff* skb; TYPE_1__ buffer; int vlan_tag; } ;
struct eth_fast_path_rx_tpa_end_cqe {size_t tpa_agg_index; scalar_t__ num_of_bds; scalar_t__ num_of_coalesced_segs; scalar_t__ total_packet_len; scalar_t__* len_list; } ;
struct TYPE_4__ {scalar_t__ count; } ;


 int CHECKSUM_UNNECESSARY ;
 int DP_ERR (struct qede_dev*,char*,...) ;
 TYPE_2__* NAPI_GRO_CB (struct sk_buff*) ;
 scalar_t__ PAGE_SIZE ;
 void* QEDE_AGG_STATE_NONE ;
 scalar_t__ QEDE_AGG_STATE_START ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dma_unmap_page (int ,int ,scalar_t__,int ) ;
 int eth_type_trans (struct sk_buff*,int ) ;
 scalar_t__ le16_to_cpu (scalar_t__) ;
 int qede_fill_frag_skb (struct qede_dev*,struct qede_rx_queue*,size_t,scalar_t__) ;
 int qede_gro_receive (struct qede_dev*,struct qede_fastpath*,struct sk_buff*,int ) ;
 int qede_reuse_page (struct qede_rx_queue*,TYPE_1__*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int qede_tpa_end(struct qede_dev *edev,
   struct qede_fastpath *fp,
   struct eth_fast_path_rx_tpa_end_cqe *cqe)
{
 struct qede_rx_queue *rxq = fp->rxq;
 struct qede_agg_info *tpa_info;
 struct sk_buff *skb;
 int i;

 tpa_info = &rxq->tpa_info[cqe->tpa_agg_index];
 skb = tpa_info->skb;

 if (tpa_info->buffer.page_offset == PAGE_SIZE)
  dma_unmap_page(rxq->dev, tpa_info->buffer.mapping,
          PAGE_SIZE, rxq->data_direction);

 for (i = 0; cqe->len_list[i]; i++)
  qede_fill_frag_skb(edev, rxq, cqe->tpa_agg_index,
       le16_to_cpu(cqe->len_list[i]));
 if (unlikely(i > 1))
  DP_ERR(edev,
         "Strange - TPA emd with more than a single len_list entry\n");

 if (unlikely(tpa_info->state != QEDE_AGG_STATE_START))
  goto err;


 if (unlikely(cqe->num_of_bds != tpa_info->frag_id + 1))
  DP_ERR(edev,
         "Strange - TPA had %02x BDs, but SKB has only %d frags\n",
         cqe->num_of_bds, tpa_info->frag_id);
 if (unlikely(skb->len != le16_to_cpu(cqe->total_packet_len)))
  DP_ERR(edev,
         "Strange - total packet len [cqe] is %4x but SKB has len %04x\n",
         le16_to_cpu(cqe->total_packet_len), skb->len);


 skb->protocol = eth_type_trans(skb, edev->ndev);
 skb->ip_summed = CHECKSUM_UNNECESSARY;




 NAPI_GRO_CB(skb)->count = le16_to_cpu(cqe->num_of_coalesced_segs);

 qede_gro_receive(edev, fp, skb, tpa_info->vlan_tag);

 tpa_info->state = QEDE_AGG_STATE_NONE;

 return 1;
err:
 tpa_info->state = QEDE_AGG_STATE_NONE;

 if (tpa_info->tpa_start_fail) {
  qede_reuse_page(rxq, &tpa_info->buffer);
  tpa_info->tpa_start_fail = 0;
 }

 dev_kfree_skb_any(tpa_info->skb);
 tpa_info->skb = ((void*)0);
 return 0;
}
