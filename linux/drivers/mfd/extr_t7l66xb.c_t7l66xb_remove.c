
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t7l66xb_platform_data {int (* disable ) (struct platform_device*) ;} ;
struct t7l66xb {int rscr; int scr; int clk32k; int clk48m; } ;
struct platform_device {int dev; } ;


 int clk_disable_unprepare (int ) ;
 int clk_put (int ) ;
 struct t7l66xb_platform_data* dev_get_platdata (int *) ;
 int iounmap (int ) ;
 int kfree (struct t7l66xb*) ;
 int mfd_remove_devices (int *) ;
 struct t7l66xb* platform_get_drvdata (struct platform_device*) ;
 int release_resource (int *) ;
 int stub1 (struct platform_device*) ;
 int t7l66xb_detach_irq (struct platform_device*) ;

__attribute__((used)) static int t7l66xb_remove(struct platform_device *dev)
{
 struct t7l66xb_platform_data *pdata = dev_get_platdata(&dev->dev);
 struct t7l66xb *t7l66xb = platform_get_drvdata(dev);
 int ret;

 ret = pdata->disable(dev);
 clk_disable_unprepare(t7l66xb->clk48m);
 clk_put(t7l66xb->clk48m);
 clk_disable_unprepare(t7l66xb->clk32k);
 clk_put(t7l66xb->clk32k);
 t7l66xb_detach_irq(dev);
 iounmap(t7l66xb->scr);
 release_resource(&t7l66xb->rscr);
 mfd_remove_devices(&dev->dev);
 kfree(t7l66xb);

 return ret;

}
