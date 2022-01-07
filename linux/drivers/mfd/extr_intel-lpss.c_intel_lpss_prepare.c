
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int device_for_each_child_reverse (struct device*,int *,int ) ;
 int resume_lpss_device ;

int intel_lpss_prepare(struct device *dev)
{




 device_for_each_child_reverse(dev, ((void*)0), resume_lpss_device);
 return 0;
}
