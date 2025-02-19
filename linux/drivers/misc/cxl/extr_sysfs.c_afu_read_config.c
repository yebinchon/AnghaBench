
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u64 ;
struct kobject {int parent; } ;
struct file {int dummy; } ;
struct cxl_afu {int dummy; } ;
struct bin_attribute {int dummy; } ;
struct afu_config_record {int cr; } ;
typedef size_t ssize_t ;
typedef int loff_t ;
struct TYPE_2__ {size_t (* afu_cr_read64 ) (struct cxl_afu*,int ,int,size_t*) ;} ;


 TYPE_1__* cxl_ops ;
 int kobj_to_dev (int ) ;
 size_t stub1 (struct cxl_afu*,int ,int,size_t*) ;
 struct afu_config_record* to_cr (struct kobject*) ;
 struct cxl_afu* to_cxl_afu (int ) ;

__attribute__((used)) static ssize_t afu_read_config(struct file *filp, struct kobject *kobj,
          struct bin_attribute *bin_attr, char *buf,
          loff_t off, size_t count)
{
 struct afu_config_record *cr = to_cr(kobj);
 struct cxl_afu *afu = to_cxl_afu(kobj_to_dev(kobj->parent));

 u64 i, j, val, rc;

 for (i = 0; i < count;) {
  rc = cxl_ops->afu_cr_read64(afu, cr->cr, off & ~0x7, &val);
  if (rc)
   val = ~0ULL;
  for (j = off & 0x7; j < 8 && i < count; i++, j++, off++)
   buf[i] = (val >> (j * 8)) & 0xff;
 }

 return count;
}
