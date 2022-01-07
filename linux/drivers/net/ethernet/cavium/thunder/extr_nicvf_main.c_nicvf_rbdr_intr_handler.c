
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct nicvf {int rbdr_task; TYPE_1__* qs; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {scalar_t__ rbdr_cnt; } ;


 int IRQ_HANDLED ;
 int NICVF_INTR_RBDR ;
 int nicvf_clear_intr (struct nicvf*,int ,scalar_t__) ;
 int nicvf_disable_intr (struct nicvf*,int ,scalar_t__) ;
 int nicvf_dump_intr_status (struct nicvf*) ;
 int nicvf_is_intr_enabled (struct nicvf*,int ,scalar_t__) ;
 int tasklet_hi_schedule (int *) ;

__attribute__((used)) static irqreturn_t nicvf_rbdr_intr_handler(int irq, void *nicvf_irq)
{
 struct nicvf *nic = (struct nicvf *)nicvf_irq;
 u8 qidx;


 nicvf_dump_intr_status(nic);


 for (qidx = 0; qidx < nic->qs->rbdr_cnt; qidx++) {
  if (!nicvf_is_intr_enabled(nic, NICVF_INTR_RBDR, qidx))
   continue;
  nicvf_disable_intr(nic, NICVF_INTR_RBDR, qidx);
  tasklet_hi_schedule(&nic->rbdr_task);

  nicvf_clear_intr(nic, NICVF_INTR_RBDR, qidx);
 }

 return IRQ_HANDLED;
}
