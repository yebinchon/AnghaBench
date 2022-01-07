
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hnae3_handle {int hnae3_dbgfs; int pdev; } ;


 int debugfs_create_dir (char const*,int ) ;
 int debugfs_create_file (char*,int,int ,struct hnae3_handle*,int *) ;
 int hns3_dbg_cmd_fops ;
 int hns3_dbgfs_root ;
 char* pci_name (int ) ;

void hns3_dbg_init(struct hnae3_handle *handle)
{
 const char *name = pci_name(handle->pdev);

 handle->hnae3_dbgfs = debugfs_create_dir(name, hns3_dbgfs_root);

 debugfs_create_file("cmd", 0600, handle->hnae3_dbgfs, handle,
       &hns3_dbg_cmd_fops);
}
