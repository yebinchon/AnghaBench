
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxl {int dev; } ;


 int cxl_data_cache_flush (struct cxl*) ;
 int cxl_debugfs_adapter_remove (struct cxl*) ;
 int cxl_deconfigure_adapter (struct cxl*) ;
 int cxl_sysfs_adapter_remove (struct cxl*) ;
 int device_unregister (int *) ;
 int pr_devel (char*) ;

__attribute__((used)) static void cxl_pci_remove_adapter(struct cxl *adapter)
{
 pr_devel("cxl_remove_adapter\n");

 cxl_sysfs_adapter_remove(adapter);
 cxl_debugfs_adapter_remove(adapter);




 cxl_data_cache_flush(adapter);

 cxl_deconfigure_adapter(adapter);

 device_unregister(&adapter->dev);
}
