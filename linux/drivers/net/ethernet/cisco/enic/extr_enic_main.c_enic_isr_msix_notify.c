
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enic {int * intr; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 unsigned int enic_msix_notify_intr (struct enic*) ;
 int enic_notify_check (struct enic*) ;
 int vnic_intr_return_all_credits (int *) ;

__attribute__((used)) static irqreturn_t enic_isr_msix_notify(int irq, void *data)
{
 struct enic *enic = data;
 unsigned int intr = enic_msix_notify_intr(enic);

 enic_notify_check(enic);
 vnic_intr_return_all_credits(&enic->intr[intr]);

 return IRQ_HANDLED;
}
