
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lis3lv02d {int * idev; int miscdev; scalar_t__ irq; TYPE_1__* pdata; } ;
struct TYPE_2__ {scalar_t__ irq2; } ;


 int free_irq (scalar_t__,struct lis3lv02d*) ;
 int input_free_polled_device (int *) ;
 int input_unregister_polled_device (int *) ;
 int misc_deregister (int *) ;

void lis3lv02d_joystick_disable(struct lis3lv02d *lis3)
{
 if (lis3->irq)
  free_irq(lis3->irq, lis3);
 if (lis3->pdata && lis3->pdata->irq2)
  free_irq(lis3->pdata->irq2, lis3);

 if (!lis3->idev)
  return;

 if (lis3->irq)
  misc_deregister(&lis3->miscdev);
 input_unregister_polled_device(lis3->idev);
 input_free_polled_device(lis3->idev);
 lis3->idev = ((void*)0);
}
