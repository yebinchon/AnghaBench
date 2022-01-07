
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int name; } ;
struct device_attribute {TYPE_1__ attr; } ;
struct TYPE_6__ {char* name; int mode; } ;
struct TYPE_7__ {int read; scalar_t__ size; TYPE_2__ attr; } ;
struct cxl_afu {int crs_num; int dev; scalar_t__ eb_len; int crs; TYPE_3__ attr_eb; } ;
struct afu_config_record {int list; } ;
struct TYPE_8__ {scalar_t__ (* support_attributes ) (int ,int ) ;} ;


 int ARRAY_SIZE (struct device_attribute*) ;
 int CXL_AFU_ATTRS ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct afu_config_record*) ;
 int PTR_ERR (struct afu_config_record*) ;
 int S_IRUGO ;
 struct device_attribute* afu_attrs ;
 int afu_eb_read ;
 TYPE_4__* cxl_ops ;
 struct afu_config_record* cxl_sysfs_afu_new_cr (struct cxl_afu*,int) ;
 int cxl_sysfs_afu_remove (struct cxl_afu*) ;
 int dev_err (int *,char*,int) ;
 int device_create_bin_file (int *,TYPE_3__*) ;
 int device_create_file (int *,struct device_attribute*) ;
 int device_remove_file (int *,struct device_attribute*) ;
 int list_add (int *,int *) ;
 scalar_t__ stub1 (int ,int ) ;
 scalar_t__ stub2 (int ,int ) ;
 int sysfs_attr_init (TYPE_2__*) ;

int cxl_sysfs_afu_add(struct cxl_afu *afu)
{
 struct device_attribute *dev_attr;
 struct afu_config_record *cr;
 int i, rc;

 INIT_LIST_HEAD(&afu->crs);

 for (i = 0; i < ARRAY_SIZE(afu_attrs); i++) {
  dev_attr = &afu_attrs[i];
  if (cxl_ops->support_attributes(dev_attr->attr.name,
      CXL_AFU_ATTRS)) {
   if ((rc = device_create_file(&afu->dev, &afu_attrs[i])))
    goto err;
  }
 }


 if (afu->eb_len) {
  sysfs_attr_init(&afu->attr_eb.attr);

  afu->attr_eb.attr.name = "afu_err_buff";
  afu->attr_eb.attr.mode = S_IRUGO;
  afu->attr_eb.size = afu->eb_len;
  afu->attr_eb.read = afu_eb_read;

  rc = device_create_bin_file(&afu->dev, &afu->attr_eb);
  if (rc) {
   dev_err(&afu->dev,
    "Unable to create eb attr for the afu. Err(%d)\n",
    rc);
   goto err;
  }
 }

 for (i = 0; i < afu->crs_num; i++) {
  cr = cxl_sysfs_afu_new_cr(afu, i);
  if (IS_ERR(cr)) {
   rc = PTR_ERR(cr);
   goto err1;
  }
  list_add(&cr->list, &afu->crs);
 }

 return 0;

err1:
 cxl_sysfs_afu_remove(afu);
 return rc;
err:

 afu->eb_len = 0;

 for (i--; i >= 0; i--) {
  dev_attr = &afu_attrs[i];
  if (cxl_ops->support_attributes(dev_attr->attr.name,
      CXL_AFU_ATTRS))
  device_remove_file(&afu->dev, &afu_attrs[i]);
 }
 return rc;
}
