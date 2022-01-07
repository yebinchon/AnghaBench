
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct hinic_sge {int dummy; } ;
struct hinic_rxq {struct hinic_rq* rq; } ;
struct hinic_rq {int * saved_skb; int wq; } ;
struct hinic_hw_wqe {int rq_wqe; } ;


 int HINIC_RQ_WQE_SIZE ;
 scalar_t__ IS_ERR (struct hinic_hw_wqe*) ;
 int hinic_put_wqe (int ,int ) ;
 struct hinic_hw_wqe* hinic_read_wqe (int ,int ,size_t*) ;
 int hinic_rq_get_sge (struct hinic_rq*,int *,size_t,struct hinic_sge*) ;
 int hinic_sge_to_dma (struct hinic_sge*) ;
 int rx_free_skb (struct hinic_rxq*,int ,int ) ;

__attribute__((used)) static void free_all_rx_skbs(struct hinic_rxq *rxq)
{
 struct hinic_rq *rq = rxq->rq;
 struct hinic_hw_wqe *hw_wqe;
 struct hinic_sge sge;
 u16 ci;

 while ((hw_wqe = hinic_read_wqe(rq->wq, HINIC_RQ_WQE_SIZE, &ci))) {
  if (IS_ERR(hw_wqe))
   break;

  hinic_rq_get_sge(rq, &hw_wqe->rq_wqe, ci, &sge);

  hinic_put_wqe(rq->wq, HINIC_RQ_WQE_SIZE);

  rx_free_skb(rxq, rq->saved_skb[ci], hinic_sge_to_dma(&sge));
 }
}
