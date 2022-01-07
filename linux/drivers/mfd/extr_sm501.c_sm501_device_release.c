
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int kfree (int ) ;
 int to_platform_device (struct device*) ;
 int to_sm_device (int ) ;

__attribute__((used)) static void sm501_device_release(struct device *dev)
{
 kfree(to_sm_device(to_platform_device(dev)));
}
