
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct cxl_afu_native {int dummy; } ;
struct cxl_afu {size_t slice; struct cxl_afu* native; int dev; int spa_mutex; } ;
struct cxl {struct cxl_afu** afu; int adapter_num; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct cxl_afu* cxl_alloc_afu (struct cxl*,int) ;
 int cxl_debugfs_afu_add (struct cxl_afu*) ;
 int cxl_debugfs_afu_remove (struct cxl_afu*) ;
 int cxl_pci_vphb_add (struct cxl_afu*) ;
 int cxl_register_afu (struct cxl_afu*) ;
 int cxl_sysfs_afu_add (struct cxl_afu*) ;
 int dev_info (int *,char*) ;
 int dev_set_name (int *,char*,int ,int) ;
 int device_unregister (int *) ;
 int kfree (struct cxl_afu*) ;
 struct cxl_afu* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int pci_configure_afu (struct cxl_afu*,struct cxl*,struct pci_dev*) ;
 int pci_deconfigure_afu (struct cxl_afu*) ;

__attribute__((used)) static int pci_init_afu(struct cxl *adapter, int slice, struct pci_dev *dev)
{
 struct cxl_afu *afu;
 int rc = -ENOMEM;

 afu = cxl_alloc_afu(adapter, slice);
 if (!afu)
  return -ENOMEM;

 afu->native = kzalloc(sizeof(struct cxl_afu_native), GFP_KERNEL);
 if (!afu->native)
  goto err_free_afu;

 mutex_init(&afu->native->spa_mutex);

 rc = dev_set_name(&afu->dev, "afu%i.%i", adapter->adapter_num, slice);
 if (rc)
  goto err_free_native;

 rc = pci_configure_afu(afu, adapter, dev);
 if (rc)
  goto err_free_native;


 cxl_debugfs_afu_add(afu);





 if ((rc = cxl_register_afu(afu)))
  goto err_put1;

 if ((rc = cxl_sysfs_afu_add(afu)))
  goto err_put1;

 adapter->afu[afu->slice] = afu;

 if ((rc = cxl_pci_vphb_add(afu)))
  dev_info(&afu->dev, "Can't register vPHB\n");

 return 0;

err_put1:
 pci_deconfigure_afu(afu);
 cxl_debugfs_afu_remove(afu);
 device_unregister(&afu->dev);
 return rc;

err_free_native:
 kfree(afu->native);
err_free_afu:
 kfree(afu);
 return rc;

}
