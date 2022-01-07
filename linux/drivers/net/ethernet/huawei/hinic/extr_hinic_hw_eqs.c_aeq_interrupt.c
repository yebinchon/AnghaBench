
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hinic_eq_work {int work; struct hinic_eq* data; } ;
struct TYPE_2__ {int entry; } ;
struct hinic_eq {struct hinic_eq_work aeq_work; TYPE_1__ msix_entry; int hwif; } ;
struct hinic_aeqs {int workq; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 struct hinic_aeqs* aeq_to_aeqs (struct hinic_eq*) ;
 int hinic_msix_attr_cnt_clear (int ,int ) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static irqreturn_t aeq_interrupt(int irq, void *data)
{
 struct hinic_eq_work *aeq_work;
 struct hinic_eq *aeq = data;
 struct hinic_aeqs *aeqs;


 hinic_msix_attr_cnt_clear(aeq->hwif, aeq->msix_entry.entry);

 aeq_work = &aeq->aeq_work;
 aeq_work->data = aeq;

 aeqs = aeq_to_aeqs(aeq);
 queue_work(aeqs->workq, &aeq_work->work);

 return IRQ_HANDLED;
}
