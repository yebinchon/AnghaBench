
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct e1000_hw {int dummy; } ;
struct igb_adapter {int wol; scalar_t__ en_mng_pt; struct e1000_hw hw; } ;


 int E1000_CTRL ;
 int E1000_CTRL_ADVD3WUC ;
 int E1000_RCTL ;
 int E1000_RCTL_MPE ;
 int E1000_STATUS ;
 int E1000_STATUS_LU ;
 int E1000_WUC ;
 int E1000_WUC_PME_EN ;
 int E1000_WUFC ;
 int E1000_WUFC_LNKC ;
 int E1000_WUFC_MC ;
 int __igb_close (struct net_device*,int) ;
 int igb_clear_interrupt_scheme (struct igb_adapter*) ;
 int igb_disable_pcie_master (struct e1000_hw*) ;
 int igb_power_down_link (struct igb_adapter*) ;
 int igb_power_up_link (struct igb_adapter*) ;
 int igb_ptp_suspend (struct igb_adapter*) ;
 int igb_release_hw_control (struct igb_adapter*) ;
 int igb_set_rx_mode (struct net_device*) ;
 int igb_setup_rctl (struct igb_adapter*) ;
 struct igb_adapter* netdev_priv (struct net_device*) ;
 int netif_device_detach (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int rd32 (int ) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int wr32 (int ,int) ;

__attribute__((used)) static int __igb_shutdown(struct pci_dev *pdev, bool *enable_wake,
     bool runtime)
{
 struct net_device *netdev = pci_get_drvdata(pdev);
 struct igb_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;
 u32 ctrl, rctl, status;
 u32 wufc = runtime ? E1000_WUFC_LNKC : adapter->wol;
 bool wake;

 rtnl_lock();
 netif_device_detach(netdev);

 if (netif_running(netdev))
  __igb_close(netdev, 1);

 igb_ptp_suspend(adapter);

 igb_clear_interrupt_scheme(adapter);
 rtnl_unlock();

 status = rd32(E1000_STATUS);
 if (status & E1000_STATUS_LU)
  wufc &= ~E1000_WUFC_LNKC;

 if (wufc) {
  igb_setup_rctl(adapter);
  igb_set_rx_mode(netdev);


  if (wufc & E1000_WUFC_MC) {
   rctl = rd32(E1000_RCTL);
   rctl |= E1000_RCTL_MPE;
   wr32(E1000_RCTL, rctl);
  }

  ctrl = rd32(E1000_CTRL);
  ctrl |= E1000_CTRL_ADVD3WUC;
  wr32(E1000_CTRL, ctrl);


  igb_disable_pcie_master(hw);

  wr32(E1000_WUC, E1000_WUC_PME_EN);
  wr32(E1000_WUFC, wufc);
 } else {
  wr32(E1000_WUC, 0);
  wr32(E1000_WUFC, 0);
 }

 wake = wufc || adapter->en_mng_pt;
 if (!wake)
  igb_power_down_link(adapter);
 else
  igb_power_up_link(adapter);

 if (enable_wake)
  *enable_wake = wake;




 igb_release_hw_control(adapter);

 pci_disable_device(pdev);

 return 0;
}
