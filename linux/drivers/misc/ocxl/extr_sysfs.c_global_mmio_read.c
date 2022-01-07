
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ global_mmio_size; } ;
struct ocxl_afu {scalar_t__ global_mmio_ptr; TYPE_1__ config; } ;
struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef size_t ssize_t ;
typedef scalar_t__ loff_t ;


 int kobj_to_dev (struct kobject*) ;
 int memcpy_fromio (char*,scalar_t__,size_t) ;
 struct ocxl_afu* to_afu (int ) ;

__attribute__((used)) static ssize_t global_mmio_read(struct file *filp, struct kobject *kobj,
    struct bin_attribute *bin_attr, char *buf,
    loff_t off, size_t count)
{
 struct ocxl_afu *afu = to_afu(kobj_to_dev(kobj));

 if (count == 0 || off < 0 ||
  off >= afu->config.global_mmio_size)
  return 0;
 memcpy_fromio(buf, afu->global_mmio_ptr + off, count);
 return count;
}
