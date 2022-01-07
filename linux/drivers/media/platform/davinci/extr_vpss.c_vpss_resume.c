
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int pm_runtime_get (struct device*) ;

__attribute__((used)) static int vpss_resume(struct device *dev)
{
 pm_runtime_get(dev);
 return 0;
}
