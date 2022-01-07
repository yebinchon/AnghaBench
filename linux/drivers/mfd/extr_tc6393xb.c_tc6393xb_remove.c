
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tc6393xb_platform_data {int (* disable ) (struct platform_device*) ;int (* teardown ) (struct platform_device*) ;} ;
struct TYPE_2__ {int base; } ;
struct tc6393xb {int clk; int rscr; int scr; TYPE_1__ gpio; } ;
struct platform_device {int dev; } ;


 int clk_disable_unprepare (int ) ;
 int clk_put (int ) ;
 struct tc6393xb_platform_data* dev_get_platdata (int *) ;
 int gpiochip_remove (TYPE_1__*) ;
 int iounmap (int ) ;
 int kfree (struct tc6393xb*) ;
 int mfd_remove_devices (int *) ;
 struct tc6393xb* platform_get_drvdata (struct platform_device*) ;
 int release_resource (int *) ;
 int stub1 (struct platform_device*) ;
 int stub2 (struct platform_device*) ;
 int tc6393xb_detach_irq (struct platform_device*) ;

__attribute__((used)) static int tc6393xb_remove(struct platform_device *dev)
{
 struct tc6393xb_platform_data *tcpd = dev_get_platdata(&dev->dev);
 struct tc6393xb *tc6393xb = platform_get_drvdata(dev);
 int ret;

 mfd_remove_devices(&dev->dev);

 if (tcpd->teardown)
  tcpd->teardown(dev);

 tc6393xb_detach_irq(dev);

 if (tc6393xb->gpio.base != -1)
  gpiochip_remove(&tc6393xb->gpio);

 ret = tcpd->disable(dev);
 clk_disable_unprepare(tc6393xb->clk);
 iounmap(tc6393xb->scr);
 release_resource(&tc6393xb->rscr);
 clk_put(tc6393xb->clk);
 kfree(tc6393xb);

 return ret;
}
