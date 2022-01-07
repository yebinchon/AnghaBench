
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef size_t u16 ;
struct hinic_rq_cqe {int status; } ;
struct hinic_rq {int wq; struct hinic_rq_cqe** cqe; } ;


 int HINIC_RQ_CQE_STATUS_CLEAR (int ,int ) ;
 int RXDONE ;
 int be32_to_cpu (int ) ;
 int cpu_to_be32 (int ) ;
 int hinic_put_wqe (int ,unsigned int) ;
 int wmb () ;

void hinic_rq_put_wqe(struct hinic_rq *rq, u16 cons_idx,
        unsigned int wqe_size)
{
 struct hinic_rq_cqe *cqe = rq->cqe[cons_idx];
 u32 status = be32_to_cpu(cqe->status);

 status = HINIC_RQ_CQE_STATUS_CLEAR(status, RXDONE);


 cqe->status = cpu_to_be32(status);

 wmb();

 hinic_put_wqe(rq->wq, wqe_size);
}
