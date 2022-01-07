
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int efx_pm_freeze (struct device*) ;
 int efx_pm_poweroff (struct device*) ;
 int efx_pm_resume (struct device*) ;

__attribute__((used)) static int efx_pm_suspend(struct device *dev)
{
 int rc;

 efx_pm_freeze(dev);
 rc = efx_pm_poweroff(dev);
 if (rc)
  efx_pm_resume(dev);
 return rc;
}
