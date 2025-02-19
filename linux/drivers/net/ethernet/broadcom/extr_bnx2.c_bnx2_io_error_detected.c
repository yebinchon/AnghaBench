
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct bnx2 {int timer; } ;
typedef int pci_ers_result_t ;
typedef scalar_t__ pci_channel_state_t ;


 int BNX2_DRV_MSG_CODE_RESET ;
 int PCI_ERS_RESULT_DISCONNECT ;
 int PCI_ERS_RESULT_NEED_RESET ;
 int bnx2_netif_stop (struct bnx2*,int) ;
 int bnx2_reset_nic (struct bnx2*,int ) ;
 int del_timer_sync (int *) ;
 struct bnx2* netdev_priv (struct net_device*) ;
 int netif_device_detach (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 scalar_t__ pci_channel_io_perm_failure ;
 int pci_disable_device (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static pci_ers_result_t bnx2_io_error_detected(struct pci_dev *pdev,
            pci_channel_state_t state)
{
 struct net_device *dev = pci_get_drvdata(pdev);
 struct bnx2 *bp = netdev_priv(dev);

 rtnl_lock();
 netif_device_detach(dev);

 if (state == pci_channel_io_perm_failure) {
  rtnl_unlock();
  return PCI_ERS_RESULT_DISCONNECT;
 }

 if (netif_running(dev)) {
  bnx2_netif_stop(bp, 1);
  del_timer_sync(&bp->timer);
  bnx2_reset_nic(bp, BNX2_DRV_MSG_CODE_RESET);
 }

 pci_disable_device(pdev);
 rtnl_unlock();


 return PCI_ERS_RESULT_NEED_RESET;
}
