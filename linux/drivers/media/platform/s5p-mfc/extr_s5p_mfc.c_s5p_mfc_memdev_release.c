
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int of_reserved_mem_device_release (struct device*) ;

__attribute__((used)) static void s5p_mfc_memdev_release(struct device *dev)
{
 of_reserved_mem_device_release(dev);
}
