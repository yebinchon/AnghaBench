
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {scalar_t__ truesize; scalar_t__ len; int data_len; struct sk_buff* next; int data; } ;
struct hinic_sge {int dummy; } ;
struct hinic_rxq {int rq; } ;
struct hinic_rq_wqe {int dummy; } ;
struct TYPE_2__ {struct sk_buff* frag_list; } ;


 int HINIC_RQ_WQE_SIZE ;
 unsigned int HINIC_RX_BUF_SZ ;
 int __skb_put (struct sk_buff*,unsigned int) ;
 int hinic_rq_get_sge (int ,struct hinic_rq_wqe*,int ,struct hinic_sge*) ;
 struct hinic_rq_wqe* hinic_rq_read_next_wqe (int ,int ,struct sk_buff**,int *) ;
 int hinic_sge_to_dma (struct hinic_sge*) ;
 int prefetch (int ) ;
 int rx_unmap_skb (struct hinic_rxq*,int ) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static int rx_recv_jumbo_pkt(struct hinic_rxq *rxq, struct sk_buff *head_skb,
        unsigned int left_pkt_len, u16 ci)
{
 struct sk_buff *skb, *curr_skb = head_skb;
 struct hinic_rq_wqe *rq_wqe;
 unsigned int curr_len;
 struct hinic_sge sge;
 int num_wqes = 0;

 while (left_pkt_len > 0) {
  rq_wqe = hinic_rq_read_next_wqe(rxq->rq, HINIC_RQ_WQE_SIZE,
      &skb, &ci);

  num_wqes++;

  hinic_rq_get_sge(rxq->rq, rq_wqe, ci, &sge);

  rx_unmap_skb(rxq, hinic_sge_to_dma(&sge));

  prefetch(skb->data);

  curr_len = (left_pkt_len > HINIC_RX_BUF_SZ) ? HINIC_RX_BUF_SZ :
       left_pkt_len;

  left_pkt_len -= curr_len;

  __skb_put(skb, curr_len);

  if (curr_skb == head_skb)
   skb_shinfo(head_skb)->frag_list = skb;
  else
   curr_skb->next = skb;

  head_skb->len += skb->len;
  head_skb->data_len += skb->len;
  head_skb->truesize += skb->truesize;

  curr_skb = skb;
 }

 return num_wqes;
}
