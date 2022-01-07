
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; } ;
struct device_attribute {TYPE_1__ attr; } ;
struct cxl {int dev; } ;
struct TYPE_4__ {scalar_t__ (* support_attributes ) (int ,int ) ;} ;


 int ARRAY_SIZE (struct device_attribute*) ;
 int CXL_ADAPTER_ATTRS ;
 struct device_attribute* adapter_attrs ;
 TYPE_2__* cxl_ops ;
 int device_create_file (int *,struct device_attribute*) ;
 int device_remove_file (int *,struct device_attribute*) ;
 scalar_t__ stub1 (int ,int ) ;
 scalar_t__ stub2 (int ,int ) ;

int cxl_sysfs_adapter_add(struct cxl *adapter)
{
 struct device_attribute *dev_attr;
 int i, rc;

 for (i = 0; i < ARRAY_SIZE(adapter_attrs); i++) {
  dev_attr = &adapter_attrs[i];
  if (cxl_ops->support_attributes(dev_attr->attr.name,
      CXL_ADAPTER_ATTRS)) {
   if ((rc = device_create_file(&adapter->dev, dev_attr)))
    goto err;
  }
 }
 return 0;
err:
 for (i--; i >= 0; i--) {
  dev_attr = &adapter_attrs[i];
  if (cxl_ops->support_attributes(dev_attr->attr.name,
      CXL_ADAPTER_ATTRS))
   device_remove_file(&adapter->dev, dev_attr);
 }
 return rc;
}
