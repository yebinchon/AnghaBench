
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int DPM_FLAG_SMART_SUSPEND ;
 int dev_pm_test_driver_flags (struct device*,int ) ;
 int pm_runtime_resume (struct device*) ;

__attribute__((used)) static int resume_lpss_device(struct device *dev, void *data)
{
 if (!dev_pm_test_driver_flags(dev, DPM_FLAG_SMART_SUSPEND))
  pm_runtime_resume(dev);

 return 0;
}
