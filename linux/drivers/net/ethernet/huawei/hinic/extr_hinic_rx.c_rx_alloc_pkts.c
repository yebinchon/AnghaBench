
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {int len; } ;
struct hinic_sge {int dummy; } ;
struct hinic_rxq {int rq; int netdev; } ;
struct hinic_rq_wqe {int dummy; } ;
struct hinic_dev {unsigned int rx_weight; } ;
typedef int dma_addr_t ;


 int HINIC_RQ_WQE_SIZE ;
 unsigned int hinic_get_rq_free_wqebbs (int ) ;
 struct hinic_rq_wqe* hinic_rq_get_wqe (int ,int ,int *) ;
 int hinic_rq_prepare_wqe (int ,int ,struct hinic_rq_wqe*,struct hinic_sge*) ;
 int hinic_rq_update (int ,int ) ;
 int hinic_rq_write_wqe (int ,int ,struct hinic_rq_wqe*,struct sk_buff*) ;
 int hinic_set_sge (struct hinic_sge*,int ,int ) ;
 int netdev_err (int ,char*) ;
 struct hinic_dev* netdev_priv (int ) ;
 struct sk_buff* rx_alloc_skb (struct hinic_rxq*,int *) ;
 int rx_free_skb (struct hinic_rxq*,struct sk_buff*,int ) ;
 int wmb () ;

__attribute__((used)) static int rx_alloc_pkts(struct hinic_rxq *rxq)
{
 struct hinic_dev *nic_dev = netdev_priv(rxq->netdev);
 struct hinic_rq_wqe *rq_wqe;
 unsigned int free_wqebbs;
 struct hinic_sge sge;
 dma_addr_t dma_addr;
 struct sk_buff *skb;
 u16 prod_idx;
 int i;

 free_wqebbs = hinic_get_rq_free_wqebbs(rxq->rq);


 if (free_wqebbs > nic_dev->rx_weight)
  free_wqebbs = nic_dev->rx_weight;

 for (i = 0; i < free_wqebbs; i++) {
  skb = rx_alloc_skb(rxq, &dma_addr);
  if (!skb) {
   netdev_err(rxq->netdev, "Failed to alloc Rx skb\n");
   goto skb_out;
  }

  hinic_set_sge(&sge, dma_addr, skb->len);

  rq_wqe = hinic_rq_get_wqe(rxq->rq, HINIC_RQ_WQE_SIZE,
       &prod_idx);
  if (!rq_wqe) {
   rx_free_skb(rxq, skb, dma_addr);
   goto skb_out;
  }

  hinic_rq_prepare_wqe(rxq->rq, prod_idx, rq_wqe, &sge);

  hinic_rq_write_wqe(rxq->rq, prod_idx, rq_wqe, skb);
 }

skb_out:
 if (i) {
  wmb();

  hinic_rq_update(rxq->rq, prod_idx);
 }

 return i;
}
