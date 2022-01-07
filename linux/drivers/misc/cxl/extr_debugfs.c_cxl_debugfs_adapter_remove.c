
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxl {int debugfs; } ;


 int debugfs_remove_recursive (int ) ;

void cxl_debugfs_adapter_remove(struct cxl *adapter)
{
 debugfs_remove_recursive(adapter->debugfs);
}
