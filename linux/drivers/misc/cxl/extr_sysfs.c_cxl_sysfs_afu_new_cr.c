
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int kobj; } ;
struct cxl_afu {TYPE_2__ dev; int crs_len; } ;
struct TYPE_7__ {char* name; int mode; } ;
struct TYPE_9__ {int read; int size; TYPE_1__ attr; } ;
struct afu_config_record {int cr; int class; int kobj; TYPE_3__ config_attr; int vendor; int device; } ;
struct TYPE_10__ {int (* afu_cr_read16 ) (struct cxl_afu*,int,int ,int *) ;int (* afu_cr_read32 ) (struct cxl_afu*,int,int ,int*) ;} ;


 int ENOMEM ;
 struct afu_config_record* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int KOBJ_ADD ;
 int PCI_CLASS_REVISION ;
 int PCI_DEVICE_ID ;
 int PCI_VENDOR_ID ;
 int S_IRUSR ;
 int afu_config_record_type ;
 int afu_read_config ;
 TYPE_6__* cxl_ops ;
 int kfree (struct afu_config_record*) ;
 int kobject_init_and_add (int *,int *,int *,char*,int) ;
 int kobject_put (int *) ;
 int kobject_uevent (int *,int ) ;
 struct afu_config_record* kzalloc (int,int ) ;
 int stub1 (struct cxl_afu*,int,int ,int *) ;
 int stub2 (struct cxl_afu*,int,int ,int *) ;
 int stub3 (struct cxl_afu*,int,int ,int*) ;
 int sysfs_bin_attr_init (TYPE_3__*) ;
 int sysfs_create_bin_file (int *,TYPE_3__*) ;
 int sysfs_remove_bin_file (int *,TYPE_3__*) ;

__attribute__((used)) static struct afu_config_record *cxl_sysfs_afu_new_cr(struct cxl_afu *afu, int cr_idx)
{
 struct afu_config_record *cr;
 int rc;

 cr = kzalloc(sizeof(struct afu_config_record), GFP_KERNEL);
 if (!cr)
  return ERR_PTR(-ENOMEM);

 cr->cr = cr_idx;

 rc = cxl_ops->afu_cr_read16(afu, cr_idx, PCI_DEVICE_ID, &cr->device);
 if (rc)
  goto err;
 rc = cxl_ops->afu_cr_read16(afu, cr_idx, PCI_VENDOR_ID, &cr->vendor);
 if (rc)
  goto err;
 rc = cxl_ops->afu_cr_read32(afu, cr_idx, PCI_CLASS_REVISION, &cr->class);
 if (rc)
  goto err;
 cr->class >>= 8;
 sysfs_bin_attr_init(&cr->config_attr);
 cr->config_attr.attr.name = "config";
 cr->config_attr.attr.mode = S_IRUSR;
 cr->config_attr.size = afu->crs_len;
 cr->config_attr.read = afu_read_config;

 rc = kobject_init_and_add(&cr->kobj, &afu_config_record_type,
      &afu->dev.kobj, "cr%i", cr->cr);
 if (rc)
  goto err;

 rc = sysfs_create_bin_file(&cr->kobj, &cr->config_attr);
 if (rc)
  goto err1;

 rc = kobject_uevent(&cr->kobj, KOBJ_ADD);
 if (rc)
  goto err2;

 return cr;
err2:
 sysfs_remove_bin_file(&cr->kobj, &cr->config_attr);
err1:
 kobject_put(&cr->kobj);
 return ERR_PTR(rc);
err:
 kfree(cr);
 return ERR_PTR(rc);
}
