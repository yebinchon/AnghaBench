
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nicvf_cq_poll {int cq_idx; int napi; struct nicvf* nicvf; } ;
struct nicvf {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int NICVF_INTR_CQ ;
 int napi_schedule_irqoff (int *) ;
 int nicvf_clear_intr (struct nicvf*,int ,int) ;
 int nicvf_disable_intr (struct nicvf*,int ,int) ;
 int nicvf_dump_intr_status (struct nicvf*) ;

__attribute__((used)) static irqreturn_t nicvf_intr_handler(int irq, void *cq_irq)
{
 struct nicvf_cq_poll *cq_poll = (struct nicvf_cq_poll *)cq_irq;
 struct nicvf *nic = cq_poll->nicvf;
 int qidx = cq_poll->cq_idx;

 nicvf_dump_intr_status(nic);


 nicvf_disable_intr(nic, NICVF_INTR_CQ, qidx);


 napi_schedule_irqoff(&cq_poll->napi);


 nicvf_clear_intr(nic, NICVF_INTR_CQ, qidx);

 return IRQ_HANDLED;
}
