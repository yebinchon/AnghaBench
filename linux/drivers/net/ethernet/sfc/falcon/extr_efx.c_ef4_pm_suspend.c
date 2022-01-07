
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int ef4_pm_freeze (struct device*) ;
 int ef4_pm_poweroff (struct device*) ;
 int ef4_pm_resume (struct device*) ;

__attribute__((used)) static int ef4_pm_suspend(struct device *dev)
{
 int rc;

 ef4_pm_freeze(dev);
 rc = ef4_pm_poweroff(dev);
 if (rc)
  ef4_pm_resume(dev);
 return rc;
}
