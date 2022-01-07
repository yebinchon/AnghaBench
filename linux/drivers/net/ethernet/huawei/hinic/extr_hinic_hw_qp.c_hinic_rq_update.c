
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct hinic_rq {int * pi_virt_addr; } ;


 int RQ_MASKED_IDX (struct hinic_rq*,scalar_t__) ;
 int cpu_to_be16 (int ) ;

void hinic_rq_update(struct hinic_rq *rq, u16 prod_idx)
{
 *rq->pi_virt_addr = cpu_to_be16(RQ_MASKED_IDX(rq, prod_idx + 1));
}
