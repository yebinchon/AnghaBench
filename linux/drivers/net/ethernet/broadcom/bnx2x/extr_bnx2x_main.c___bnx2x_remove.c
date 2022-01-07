
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int enable_cnt; } ;
struct net_device {int dummy; } ;
struct bnx2x {int flags; scalar_t__ doorbells; scalar_t__ regview; int wol; int sp_rtnl_task; int fip_mac; int dev; } ;


 int BC_SUPPORTS_RMMOD_CMD ;
 int BP_NOMCP (struct bnx2x*) ;
 int DRV_MSG_CODE_RMMOD ;
 scalar_t__ IS_PF (struct bnx2x*) ;
 scalar_t__ IS_VF (struct bnx2x*) ;
 int NETDEV_HW_ADDR_T_SAN ;
 int NO_FCOE (struct bnx2x*) ;
 int OS_DRIVER_STATE_NOT_LOADED ;
 int PCI_D0 ;
 int PCI_D3hot ;
 scalar_t__ SYSTEM_POWER_OFF ;
 int atomic_read (int *) ;
 int bnx2x_dcbnl_update_applist (struct bnx2x*,int) ;
 int bnx2x_disable_msi (struct bnx2x*) ;
 int bnx2x_disable_pcie_error_reporting (struct bnx2x*) ;
 int bnx2x_free_mem_bp (struct bnx2x*) ;
 int bnx2x_fw_command (struct bnx2x*,int ,int ) ;
 int bnx2x_iov_remove_one (struct bnx2x*) ;
 int bnx2x_release_firmware (struct bnx2x*) ;
 int bnx2x_reset_endianity (struct bnx2x*) ;
 int bnx2x_set_os_driver_state (struct bnx2x*,int ) ;
 int bnx2x_set_power_state (struct bnx2x*,int ) ;
 int bnx2x_vf_pci_dealloc (struct bnx2x*) ;
 int bnx2x_vfpf_release (struct bnx2x*) ;
 int cancel_delayed_work_sync (int *) ;
 int dev_addr_del (int ,int ,int ) ;
 int dev_close (struct net_device*) ;
 int free_netdev (struct net_device*) ;
 int iounmap (scalar_t__) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_release_regions (struct pci_dev*) ;
 int pci_set_power_state (struct pci_dev*,int ) ;
 int pci_wake_from_d3 (struct pci_dev*,int ) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 scalar_t__ system_state ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void __bnx2x_remove(struct pci_dev *pdev,
      struct net_device *dev,
      struct bnx2x *bp,
      bool remove_netdev)
{

 if (!NO_FCOE(bp)) {
  rtnl_lock();
  dev_addr_del(bp->dev, bp->fip_mac, NETDEV_HW_ADDR_T_SAN);
  rtnl_unlock();
 }






 if (IS_PF(bp) &&
     !BP_NOMCP(bp) &&
     (bp->flags & BC_SUPPORTS_RMMOD_CMD))
  bnx2x_fw_command(bp, DRV_MSG_CODE_RMMOD, 0);


 if (remove_netdev) {
  unregister_netdev(dev);
 } else {
  rtnl_lock();
  dev_close(dev);
  rtnl_unlock();
 }

 bnx2x_iov_remove_one(bp);


 if (IS_PF(bp)) {
  bnx2x_set_power_state(bp, PCI_D0);
  bnx2x_set_os_driver_state(bp, OS_DRIVER_STATE_NOT_LOADED);




  bnx2x_reset_endianity(bp);
 }


 bnx2x_disable_msi(bp);


 if (IS_PF(bp))
  bnx2x_set_power_state(bp, PCI_D3hot);


 cancel_delayed_work_sync(&bp->sp_rtnl_task);


 if (IS_VF(bp))
  bnx2x_vfpf_release(bp);


 if (system_state == SYSTEM_POWER_OFF) {
  pci_wake_from_d3(pdev, bp->wol);
  pci_set_power_state(pdev, PCI_D3hot);
 }

 bnx2x_disable_pcie_error_reporting(bp);
 if (remove_netdev) {
  if (bp->regview)
   iounmap(bp->regview);




  if (IS_PF(bp)) {
   if (bp->doorbells)
    iounmap(bp->doorbells);

   bnx2x_release_firmware(bp);
  } else {
   bnx2x_vf_pci_dealloc(bp);
  }
  bnx2x_free_mem_bp(bp);

  free_netdev(dev);

  if (atomic_read(&pdev->enable_cnt) == 1)
   pci_release_regions(pdev);

  pci_disable_device(pdev);
 }
}
