
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xge_pdata {int napi; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int __napi_schedule (int *) ;
 scalar_t__ napi_schedule_prep (int *) ;
 int xge_intr_disable (struct xge_pdata*) ;

__attribute__((used)) static irqreturn_t xge_irq(const int irq, void *data)
{
 struct xge_pdata *pdata = data;

 if (napi_schedule_prep(&pdata->napi)) {
  xge_intr_disable(pdata);
  __napi_schedule(&pdata->napi);
 }

 return IRQ_HANDLED;
}
