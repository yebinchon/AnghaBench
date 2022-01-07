
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nicvf {double cq_coalesce_usecs; int pdev; } ;
struct TYPE_2__ {int base; } ;
struct cmp_queue {int thresh; TYPE_1__ dmem; int desc; } ;


 int CMP_QUEUE_CQE_THRESH ;
 int CMP_QUEUE_DESC_SIZE ;
 double CMP_QUEUE_TIMER_THRESH ;
 int NICVF_CQ_BASE_ALIGN_BYTES ;
 int nicvf_alloc_q_desc_mem (struct nicvf*,TYPE_1__*,int,int ,int ) ;
 scalar_t__ pass1_silicon (int ) ;

__attribute__((used)) static int nicvf_init_cmp_queue(struct nicvf *nic,
    struct cmp_queue *cq, int q_len)
{
 int err;

 err = nicvf_alloc_q_desc_mem(nic, &cq->dmem, q_len, CMP_QUEUE_DESC_SIZE,
         NICVF_CQ_BASE_ALIGN_BYTES);
 if (err)
  return err;

 cq->desc = cq->dmem.base;
 cq->thresh = pass1_silicon(nic->pdev) ? 0 : CMP_QUEUE_CQE_THRESH;
 nic->cq_coalesce_usecs = (CMP_QUEUE_TIMER_THRESH * 0.05) - 1;

 return 0;
}
