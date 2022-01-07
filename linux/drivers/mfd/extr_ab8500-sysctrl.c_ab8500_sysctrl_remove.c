
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int * ab8500_power_off ;
 int * pm_power_off ;
 int * sysctrl_dev ;

__attribute__((used)) static int ab8500_sysctrl_remove(struct platform_device *pdev)
{
 sysctrl_dev = ((void*)0);

 if (pm_power_off == ab8500_power_off)
  pm_power_off = ((void*)0);

 return 0;
}
