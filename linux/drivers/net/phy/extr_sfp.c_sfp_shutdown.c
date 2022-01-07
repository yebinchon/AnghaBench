
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfp {int timeout; int poll; int * gpio_irq; int dev; } ;
struct platform_device {int dummy; } ;


 int GPIO_MAX ;
 int cancel_delayed_work_sync (int *) ;
 int devm_free_irq (int ,int ,struct sfp*) ;
 struct sfp* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static void sfp_shutdown(struct platform_device *pdev)
{
 struct sfp *sfp = platform_get_drvdata(pdev);
 int i;

 for (i = 0; i < GPIO_MAX; i++) {
  if (!sfp->gpio_irq[i])
   continue;

  devm_free_irq(sfp->dev, sfp->gpio_irq[i], sfp);
 }

 cancel_delayed_work_sync(&sfp->poll);
 cancel_delayed_work_sync(&sfp->timeout);
}
