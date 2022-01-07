
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ twl_irq; int pm_nb; } ;


 int free_irq (scalar_t__,int *) ;
 TYPE_1__* twl6030_irq ;
 int unregister_pm_notifier (int *) ;

int twl6030_exit_irq(void)
{
 if (twl6030_irq && twl6030_irq->twl_irq) {
  unregister_pm_notifier(&twl6030_irq->pm_nb);
  free_irq(twl6030_irq->twl_irq, ((void*)0));
 }
 return 0;
}
