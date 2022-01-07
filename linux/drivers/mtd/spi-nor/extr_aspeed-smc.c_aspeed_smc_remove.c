
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int aspeed_smc_unregister (int ) ;
 int platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int aspeed_smc_remove(struct platform_device *dev)
{
 return aspeed_smc_unregister(platform_get_drvdata(dev));
}
