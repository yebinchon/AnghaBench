
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc6387xb {int clk32k; int rscr; int scr; } ;
struct platform_device {int dev; } ;


 int clk_disable_unprepare (int ) ;
 int clk_put (int ) ;
 int iounmap (int ) ;
 int kfree (struct tc6387xb*) ;
 int mfd_remove_devices (int *) ;
 struct tc6387xb* platform_get_drvdata (struct platform_device*) ;
 int release_resource (int *) ;

__attribute__((used)) static int tc6387xb_remove(struct platform_device *dev)
{
 struct tc6387xb *tc6387xb = platform_get_drvdata(dev);

 mfd_remove_devices(&dev->dev);
 iounmap(tc6387xb->scr);
 release_resource(&tc6387xb->rscr);
 clk_disable_unprepare(tc6387xb->clk32k);
 clk_put(tc6387xb->clk32k);
 kfree(tc6387xb);

 return 0;
}
