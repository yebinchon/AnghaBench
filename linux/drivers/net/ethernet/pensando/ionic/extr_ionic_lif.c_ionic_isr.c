
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct napi_struct {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int napi_schedule_irqoff (struct napi_struct*) ;

__attribute__((used)) static irqreturn_t ionic_isr(int irq, void *data)
{
 struct napi_struct *napi = data;

 napi_schedule_irqoff(napi);

 return IRQ_HANDLED;
}
