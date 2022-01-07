
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_7__ {int (* set_phy_power ) (struct ixgbe_hw*,int) ;} ;
struct TYPE_8__ {TYPE_3__ ops; } ;
struct TYPE_5__ {int (* enable_tx_laser ) (struct ixgbe_hw*) ;int (* stop_link_on_d3 ) (struct ixgbe_hw*) ;} ;
struct TYPE_6__ {int type; TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_4__ phy; TYPE_2__ mac; } ;
struct ixgbe_adapter {int wol; int state; struct ixgbe_hw hw; struct net_device* netdev; } ;


 int IXGBE_CTRL ;
 int IXGBE_CTRL_GIO_DIS ;
 int IXGBE_FCTRL ;
 int IXGBE_FCTRL_MPE ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int IXGBE_WUC ;
 int IXGBE_WUFC ;
 int __IXGBE_DISABLED ;
 int ixgbe_clear_interrupt_scheme (struct ixgbe_adapter*) ;
 int ixgbe_close_suspend (struct ixgbe_adapter*) ;






 int ixgbe_release_hw_control (struct ixgbe_adapter*) ;
 int ixgbe_set_rx_mode (struct net_device*) ;
 int netif_device_detach (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct ixgbe_adapter* pci_get_drvdata (struct pci_dev*) ;
 int pci_save_state (struct pci_dev*) ;
 int pci_wake_from_d3 (struct pci_dev*,int) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int stub1 (struct ixgbe_hw*) ;
 int stub2 (struct ixgbe_hw*) ;
 int stub3 (struct ixgbe_hw*,int) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static int __ixgbe_shutdown(struct pci_dev *pdev, bool *enable_wake)
{
 struct ixgbe_adapter *adapter = pci_get_drvdata(pdev);
 struct net_device *netdev = adapter->netdev;
 struct ixgbe_hw *hw = &adapter->hw;
 u32 ctrl;
 u32 wufc = adapter->wol;




 rtnl_lock();
 netif_device_detach(netdev);

 if (netif_running(netdev))
  ixgbe_close_suspend(adapter);

 ixgbe_clear_interrupt_scheme(adapter);
 rtnl_unlock();







 if (hw->mac.ops.stop_link_on_d3)
  hw->mac.ops.stop_link_on_d3(hw);

 if (wufc) {
  u32 fctrl;

  ixgbe_set_rx_mode(netdev);


  if (hw->mac.ops.enable_tx_laser)
   hw->mac.ops.enable_tx_laser(hw);


  fctrl = IXGBE_READ_REG(hw, IXGBE_FCTRL);
  fctrl |= IXGBE_FCTRL_MPE;
  IXGBE_WRITE_REG(hw, IXGBE_FCTRL, fctrl);

  ctrl = IXGBE_READ_REG(hw, IXGBE_CTRL);
  ctrl |= IXGBE_CTRL_GIO_DIS;
  IXGBE_WRITE_REG(hw, IXGBE_CTRL, ctrl);

  IXGBE_WRITE_REG(hw, IXGBE_WUFC, wufc);
 } else {
  IXGBE_WRITE_REG(hw, IXGBE_WUC, 0);
  IXGBE_WRITE_REG(hw, IXGBE_WUFC, 0);
 }

 switch (hw->mac.type) {
 case 133:
  pci_wake_from_d3(pdev, 0);
  break;
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
  pci_wake_from_d3(pdev, !!wufc);
  break;
 default:
  break;
 }

 *enable_wake = !!wufc;
 if (hw->phy.ops.set_phy_power && !*enable_wake)
  hw->phy.ops.set_phy_power(hw, 0);

 ixgbe_release_hw_control(adapter);

 if (!test_and_set_bit(__IXGBE_DISABLED, &adapter->state))
  pci_disable_device(pdev);

 return 0;
}
