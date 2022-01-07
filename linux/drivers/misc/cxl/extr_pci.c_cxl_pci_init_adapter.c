
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct cxl_native {int dummy; } ;
struct cxl {int perst_loads_image; int perst_same_image; int dev; int native; } ;


 int ENOMEM ;
 struct cxl* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int cxl_adapter_context_unlock (struct cxl*) ;
 struct cxl* cxl_alloc_adapter () ;
 int cxl_configure_adapter (struct cxl*,struct pci_dev*) ;
 int cxl_debugfs_adapter_add (struct cxl*) ;
 int cxl_debugfs_adapter_remove (struct cxl*) ;
 int cxl_deconfigure_adapter (struct cxl*) ;
 int cxl_register_adapter (struct cxl*) ;
 int cxl_release_adapter (int *) ;
 int cxl_sysfs_adapter_add (struct cxl*) ;
 int device_unregister (int *) ;
 int kzalloc (int,int ) ;
 int pci_disable_device (struct pci_dev*) ;
 int set_sl_ops (struct cxl*,struct pci_dev*) ;

__attribute__((used)) static struct cxl *cxl_pci_init_adapter(struct pci_dev *dev)
{
 struct cxl *adapter;
 int rc;

 adapter = cxl_alloc_adapter();
 if (!adapter)
  return ERR_PTR(-ENOMEM);

 adapter->native = kzalloc(sizeof(struct cxl_native), GFP_KERNEL);
 if (!adapter->native) {
  rc = -ENOMEM;
  goto err_release;
 }

 set_sl_ops(adapter, dev);




 adapter->perst_loads_image = 1;
 adapter->perst_same_image = 0;

 rc = cxl_configure_adapter(adapter, dev);
 if (rc) {
  pci_disable_device(dev);
  goto err_release;
 }


 cxl_debugfs_adapter_add(adapter);





 if ((rc = cxl_register_adapter(adapter)))
  goto err_put1;

 if ((rc = cxl_sysfs_adapter_add(adapter)))
  goto err_put1;


 cxl_adapter_context_unlock(adapter);

 return adapter;

err_put1:



 cxl_debugfs_adapter_remove(adapter);
 cxl_deconfigure_adapter(adapter);
 device_unregister(&adapter->dev);
 return ERR_PTR(rc);

err_release:
 cxl_release_adapter(&adapter->dev);
 return ERR_PTR(rc);
}
