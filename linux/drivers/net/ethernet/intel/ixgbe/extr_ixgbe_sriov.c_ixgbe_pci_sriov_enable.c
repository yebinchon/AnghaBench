
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;
struct ixgbe_adapter {int hw_tcs; int num_rx_pools; int fwd_bitmask; } ;


 int EPERM ;
 int IXGBE_MAX_VFS_1TC ;
 int IXGBE_MAX_VFS_4TC ;
 int IXGBE_MAX_VFS_8TC ;
 int __ixgbe_enable_sriov (struct ixgbe_adapter*,int) ;
 int bitmap_weight (int ,int ) ;
 int e_dev_err (char*,int,int,int) ;
 int e_dev_warn (char*,int) ;
 int ixgbe_disable_sriov (struct ixgbe_adapter*) ;
 int ixgbe_get_vfs (struct ixgbe_adapter*) ;
 int ixgbe_sriov_reinit (struct ixgbe_adapter*) ;
 int ixgbe_vf_configuration (struct pci_dev*,int) ;
 int pci_enable_sriov (struct pci_dev*,int) ;
 struct ixgbe_adapter* pci_get_drvdata (struct pci_dev*) ;
 int pci_num_vf (struct pci_dev*) ;

__attribute__((used)) static int ixgbe_pci_sriov_enable(struct pci_dev *dev, int num_vfs)
{
 return 0;

}
