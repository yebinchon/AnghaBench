
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nicvf {int qs_err_task; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int NICVF_INTR_QS_ERR ;
 int nicvf_clear_intr (struct nicvf*,int ,int ) ;
 int nicvf_disable_intr (struct nicvf*,int ,int ) ;
 int nicvf_dump_intr_status (struct nicvf*) ;
 int tasklet_hi_schedule (int *) ;

__attribute__((used)) static irqreturn_t nicvf_qs_err_intr_handler(int irq, void *nicvf_irq)
{
 struct nicvf *nic = (struct nicvf *)nicvf_irq;

 nicvf_dump_intr_status(nic);


 nicvf_disable_intr(nic, NICVF_INTR_QS_ERR, 0);
 tasklet_hi_schedule(&nic->qs_err_task);
 nicvf_clear_intr(nic, NICVF_INTR_QS_ERR, 0);

 return IRQ_HANDLED;
}
