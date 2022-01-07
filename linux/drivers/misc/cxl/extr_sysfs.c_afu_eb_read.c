
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct file {int dummy; } ;
struct cxl_afu {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef int ssize_t ;
typedef int loff_t ;
struct TYPE_2__ {int (* afu_read_err_buffer ) (struct cxl_afu*,char*,int ,size_t) ;} ;


 TYPE_1__* cxl_ops ;
 int kobj_to_dev (struct kobject*) ;
 int stub1 (struct cxl_afu*,char*,int ,size_t) ;
 struct cxl_afu* to_cxl_afu (int ) ;

__attribute__((used)) static ssize_t afu_eb_read(struct file *filp, struct kobject *kobj,
          struct bin_attribute *bin_attr, char *buf,
          loff_t off, size_t count)
{
 struct cxl_afu *afu = to_cxl_afu(kobj_to_dev(kobj));

 return cxl_ops->afu_read_err_buffer(afu, buf, off, count);
}
