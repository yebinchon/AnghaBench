
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rgmii_instance {scalar_t__ users; int base; } ;
struct platform_device {int dummy; } ;


 int WARN_ON (int) ;
 int iounmap (int ) ;
 int kfree (struct rgmii_instance*) ;
 struct rgmii_instance* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int rgmii_remove(struct platform_device *ofdev)
{
 struct rgmii_instance *dev = platform_get_drvdata(ofdev);

 WARN_ON(dev->users != 0);

 iounmap(dev->base);
 kfree(dev);

 return 0;
}
