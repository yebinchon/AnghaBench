
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef size_t u16 ;
struct sk_buff {int dummy; } ;
struct hinic_rq_wqe {int dummy; } ;
struct hinic_rq_cqe {int status; } ;
struct hinic_rq {struct sk_buff** saved_skb; struct hinic_rq_cqe** cqe; int wq; } ;
struct hinic_hw_wqe {struct hinic_rq_wqe rq_wqe; } ;


 int HINIC_RQ_CQE_STATUS_GET (int ,int ) ;
 scalar_t__ IS_ERR (struct hinic_hw_wqe*) ;
 int RXDONE ;
 int be32_to_cpu (int ) ;
 struct hinic_hw_wqe* hinic_read_wqe (int ,unsigned int,size_t*) ;

struct hinic_rq_wqe *hinic_rq_read_wqe(struct hinic_rq *rq,
           unsigned int wqe_size,
           struct sk_buff **skb, u16 *cons_idx)
{
 struct hinic_hw_wqe *hw_wqe;
 struct hinic_rq_cqe *cqe;
 int rx_done;
 u32 status;

 hw_wqe = hinic_read_wqe(rq->wq, wqe_size, cons_idx);
 if (IS_ERR(hw_wqe))
  return ((void*)0);

 cqe = rq->cqe[*cons_idx];

 status = be32_to_cpu(cqe->status);

 rx_done = HINIC_RQ_CQE_STATUS_GET(status, RXDONE);
 if (!rx_done)
  return ((void*)0);

 *skb = rq->saved_skb[*cons_idx];

 return &hw_wqe->rq_wqe;
}
