
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 scalar_t__ ab8500_power_off ;
 scalar_t__ pm_power_off ;
 int * sysctrl_dev ;

__attribute__((used)) static int ab8500_sysctrl_probe(struct platform_device *pdev)
{
 sysctrl_dev = &pdev->dev;

 if (!pm_power_off)
  pm_power_off = ab8500_power_off;

 return 0;
}
