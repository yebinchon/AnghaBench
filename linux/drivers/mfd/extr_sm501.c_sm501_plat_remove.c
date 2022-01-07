
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sm501_devdata {int regs_claim; int regs; } ;
struct platform_device {int dummy; } ;


 int iounmap (int ) ;
 int kfree (int ) ;
 struct sm501_devdata* platform_get_drvdata (struct platform_device*) ;
 int release_resource (int ) ;
 int sm501_dev_remove (struct sm501_devdata*) ;

__attribute__((used)) static int sm501_plat_remove(struct platform_device *dev)
{
 struct sm501_devdata *sm = platform_get_drvdata(dev);

 sm501_dev_remove(sm);
 iounmap(sm->regs);

 release_resource(sm->regs_claim);
 kfree(sm->regs_claim);

 return 0;
}
