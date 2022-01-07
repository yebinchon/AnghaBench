
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enic {int * napi; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int napi_schedule_irqoff (int *) ;

__attribute__((used)) static irqreturn_t enic_isr_msi(int irq, void *data)
{
 struct enic *enic = data;
 napi_schedule_irqoff(&enic->napi[0]);

 return IRQ_HANDLED;
}
