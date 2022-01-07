
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int bdisp_runtime_suspend (struct device*) ;
 int pm_runtime_suspended (struct device*) ;

__attribute__((used)) static int bdisp_suspend(struct device *dev)
{
 if (!pm_runtime_suspended(dev))
  return bdisp_runtime_suspend(dev);

 return 0;
}
