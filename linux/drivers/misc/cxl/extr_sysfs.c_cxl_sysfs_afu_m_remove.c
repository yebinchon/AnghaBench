
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; } ;
struct device_attribute {TYPE_1__ attr; } ;
struct cxl_afu {int chardev_m; } ;
struct TYPE_4__ {scalar_t__ (* support_attributes ) (int ,int ) ;} ;


 int ARRAY_SIZE (struct device_attribute*) ;
 int CXL_AFU_MASTER_ATTRS ;
 struct device_attribute* afu_master_attrs ;
 TYPE_2__* cxl_ops ;
 int device_remove_file (int ,struct device_attribute*) ;
 scalar_t__ stub1 (int ,int ) ;

void cxl_sysfs_afu_m_remove(struct cxl_afu *afu)
{
 struct device_attribute *dev_attr;
 int i;

 for (i = 0; i < ARRAY_SIZE(afu_master_attrs); i++) {
  dev_attr = &afu_master_attrs[i];
  if (cxl_ops->support_attributes(dev_attr->attr.name,
      CXL_AFU_MASTER_ATTRS))
   device_remove_file(afu->chardev_m, &afu_master_attrs[i]);
 }
}
