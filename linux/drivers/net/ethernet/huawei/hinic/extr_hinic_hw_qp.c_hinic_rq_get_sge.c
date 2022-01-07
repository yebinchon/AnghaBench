
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
typedef size_t u16 ;
struct hinic_sge {int len; void* lo_addr; void* hi_addr; } ;
struct TYPE_2__ {int lo_addr; int hi_addr; } ;
struct hinic_rq_wqe {TYPE_1__ buf_desc; } ;
struct hinic_rq_cqe {int len; } ;
struct hinic_rq {struct hinic_rq_cqe** cqe; } ;


 int HINIC_RQ_CQE_SGE_GET (void*,int ) ;
 int LEN ;
 void* be32_to_cpu (int ) ;

void hinic_rq_get_sge(struct hinic_rq *rq, struct hinic_rq_wqe *rq_wqe,
        u16 cons_idx, struct hinic_sge *sge)
{
 struct hinic_rq_cqe *cqe = rq->cqe[cons_idx];
 u32 len = be32_to_cpu(cqe->len);

 sge->hi_addr = be32_to_cpu(rq_wqe->buf_desc.hi_addr);
 sge->lo_addr = be32_to_cpu(rq_wqe->buf_desc.lo_addr);
 sge->len = HINIC_RQ_CQE_SGE_GET(len, LEN);
}
