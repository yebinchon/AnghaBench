
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int entry; } ;
struct hinic_eq {int ceq_tasklet; TYPE_1__ msix_entry; int hwif; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int hinic_msix_attr_cnt_clear (int ,int ) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t ceq_interrupt(int irq, void *data)
{
 struct hinic_eq *ceq = data;


 hinic_msix_attr_cnt_clear(ceq->hwif, ceq->msix_entry.entry);

 tasklet_schedule(&ceq->ceq_tasklet);

 return IRQ_HANDLED;
}
