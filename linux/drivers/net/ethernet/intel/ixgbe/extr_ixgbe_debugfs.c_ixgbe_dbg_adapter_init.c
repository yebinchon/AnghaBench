
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_adapter {int ixgbe_dbg_adapter; int pdev; } ;


 int debugfs_create_dir (char const*,int ) ;
 int debugfs_create_file (char*,int,int ,struct ixgbe_adapter*,int *) ;
 int ixgbe_dbg_netdev_ops_fops ;
 int ixgbe_dbg_reg_ops_fops ;
 int ixgbe_dbg_root ;
 char* pci_name (int ) ;

void ixgbe_dbg_adapter_init(struct ixgbe_adapter *adapter)
{
 const char *name = pci_name(adapter->pdev);

 adapter->ixgbe_dbg_adapter = debugfs_create_dir(name, ixgbe_dbg_root);
 debugfs_create_file("reg_ops", 0600, adapter->ixgbe_dbg_adapter,
       adapter, &ixgbe_dbg_reg_ops_fops);
 debugfs_create_file("netdev_ops", 0600, adapter->ixgbe_dbg_adapter,
       adapter, &ixgbe_dbg_netdev_ops_fops);
}
