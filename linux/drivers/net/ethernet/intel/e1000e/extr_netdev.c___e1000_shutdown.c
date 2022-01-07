
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct pci_dev {TYPE_6__* bus; } ;
struct net_device {int dummy; } ;
struct TYPE_10__ {int (* acquire ) (struct e1000_hw*) ;int (* release ) (struct e1000_hw*) ;} ;
struct TYPE_11__ {scalar_t__ media_type; scalar_t__ type; TYPE_4__ ops; } ;
struct TYPE_8__ {int eee_lp_ability; } ;
struct TYPE_9__ {TYPE_2__ ich8lan; } ;
struct TYPE_7__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_5__ phy; TYPE_3__ dev_spec; TYPE_1__ mac; } ;
struct e1000_adapter {int wol; int flags2; int flags; int eee_advert; struct e1000_hw hw; } ;
struct TYPE_12__ {struct pci_dev* self; } ;


 int CTRL ;
 int CTRL_EXT ;
 int E1000_CTRL_ADVD3WUC ;
 int E1000_CTRL_EN_PHY_PWR_MGMT ;
 int E1000_CTRL_EXT_SDP3_DATA ;
 int E1000_RCTL_MPE ;
 int E1000_STATUS_LU ;
 int E1000_WUC_PME_EN ;
 int E1000_WUFC_BC ;
 int E1000_WUFC_EX ;
 int E1000_WUFC_LNKC ;
 int E1000_WUFC_MC ;
 int FLAG2_HAS_PHY_WAKEUP ;
 int FLAG_IS_ICH ;
 int FLAG_IS_QUAD_PORT ;
 int I82579_EEE_1000_SUPPORTED ;
 int I82579_EEE_100_SUPPORTED ;
 int I82579_LPI_CTRL ;
 int I82579_LPI_CTRL_1000_ENABLE ;
 int I82579_LPI_CTRL_100_ENABLE ;
 int PCI_EXP_DEVCTL ;
 int PCI_EXP_DEVCTL_CERE ;
 int RCTL ;
 int STATUS ;
 int WUC ;
 int WUFC ;
 int e1000_enable_ulp_lpt_lp (struct e1000_hw*,int) ;
 int e1000_init_phy_wakeup (struct e1000_adapter*,int) ;
 scalar_t__ e1000_media_type_fiber ;
 scalar_t__ e1000_media_type_internal_serdes ;
 scalar_t__ e1000_pch_lpt ;
 scalar_t__ e1000_phy_i217 ;
 scalar_t__ e1000_phy_igp_3 ;
 int e1000_power_down_phy (struct e1000_adapter*) ;
 int e1000_setup_rctl (struct e1000_adapter*) ;
 int e1000_suspend_workarounds_ich8lan (struct e1000_hw*) ;
 int e1000e_igp3_phy_powerdown_workaround_ich8lan (struct e1000_hw*) ;
 int e1000e_power_up_phy (struct e1000_adapter*) ;
 int e1000e_release_hw_control (struct e1000_adapter*) ;
 int e1000e_set_rx_mode (struct net_device*) ;
 int e1e_rphy_locked (struct e1000_hw*,int ,int*) ;
 int e1e_wphy_locked (struct e1000_hw*,int ,int) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;
 int pci_clear_master (struct pci_dev*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_prepare_to_sleep (struct pci_dev*) ;
 int pci_save_state (struct pci_dev*) ;
 int pcie_capability_read_word (struct pci_dev*,int ,int*) ;
 int pcie_capability_write_word (struct pci_dev*,int ,int) ;
 int stub1 (struct e1000_hw*) ;
 int stub2 (struct e1000_hw*) ;

__attribute__((used)) static int __e1000_shutdown(struct pci_dev *pdev, bool runtime)
{
 struct net_device *netdev = pci_get_drvdata(pdev);
 struct e1000_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;
 u32 ctrl, ctrl_ext, rctl, status;

 u32 wufc = runtime ? E1000_WUFC_LNKC : adapter->wol;
 int retval = 0;

 status = er32(STATUS);
 if (status & E1000_STATUS_LU)
  wufc &= ~E1000_WUFC_LNKC;

 if (wufc) {
  e1000_setup_rctl(adapter);
  e1000e_set_rx_mode(netdev);


  if (wufc & E1000_WUFC_MC) {
   rctl = er32(RCTL);
   rctl |= E1000_RCTL_MPE;
   ew32(RCTL, rctl);
  }

  ctrl = er32(CTRL);
  ctrl |= E1000_CTRL_ADVD3WUC;
  if (!(adapter->flags2 & FLAG2_HAS_PHY_WAKEUP))
   ctrl |= E1000_CTRL_EN_PHY_PWR_MGMT;
  ew32(CTRL, ctrl);

  if (adapter->hw.phy.media_type == e1000_media_type_fiber ||
      adapter->hw.phy.media_type ==
      e1000_media_type_internal_serdes) {

   ctrl_ext = er32(CTRL_EXT);
   ctrl_ext |= E1000_CTRL_EXT_SDP3_DATA;
   ew32(CTRL_EXT, ctrl_ext);
  }

  if (!runtime)
   e1000e_power_up_phy(adapter);

  if (adapter->flags & FLAG_IS_ICH)
   e1000_suspend_workarounds_ich8lan(&adapter->hw);

  if (adapter->flags2 & FLAG2_HAS_PHY_WAKEUP) {

   retval = e1000_init_phy_wakeup(adapter, wufc);
   if (retval)
    return retval;
  } else {

   ew32(WUFC, wufc);
   ew32(WUC, E1000_WUC_PME_EN);
  }
 } else {
  ew32(WUC, 0);
  ew32(WUFC, 0);

  e1000_power_down_phy(adapter);
 }

 if (adapter->hw.phy.type == e1000_phy_igp_3) {
  e1000e_igp3_phy_powerdown_workaround_ich8lan(&adapter->hw);
 } else if (hw->mac.type >= e1000_pch_lpt) {
  if (!(wufc & (E1000_WUFC_EX | E1000_WUFC_MC | E1000_WUFC_BC)))



   retval = e1000_enable_ulp_lpt_lp(hw, !runtime);

  if (retval)
   return retval;
 }




 if ((hw->phy.type >= e1000_phy_i217) &&
     adapter->eee_advert && hw->dev_spec.ich8lan.eee_lp_ability) {
  u16 lpi_ctrl = 0;

  retval = hw->phy.ops.acquire(hw);
  if (!retval) {
   retval = e1e_rphy_locked(hw, I82579_LPI_CTRL,
       &lpi_ctrl);
   if (!retval) {
    if (adapter->eee_advert &
        hw->dev_spec.ich8lan.eee_lp_ability &
        I82579_EEE_100_SUPPORTED)
     lpi_ctrl |= I82579_LPI_CTRL_100_ENABLE;
    if (adapter->eee_advert &
        hw->dev_spec.ich8lan.eee_lp_ability &
        I82579_EEE_1000_SUPPORTED)
     lpi_ctrl |= I82579_LPI_CTRL_1000_ENABLE;

    retval = e1e_wphy_locked(hw, I82579_LPI_CTRL,
        lpi_ctrl);
   }
  }
  hw->phy.ops.release(hw);
 }




 e1000e_release_hw_control(adapter);

 pci_clear_master(pdev);
 if (adapter->flags & FLAG_IS_QUAD_PORT) {
  struct pci_dev *us_dev = pdev->bus->self;
  u16 devctl;

  if (!us_dev)
   return 0;

  pcie_capability_read_word(us_dev, PCI_EXP_DEVCTL, &devctl);
  pcie_capability_write_word(us_dev, PCI_EXP_DEVCTL,
        (devctl & ~PCI_EXP_DEVCTL_CERE));

  pci_save_state(pdev);
  pci_prepare_to_sleep(pdev);

  pcie_capability_write_word(us_dev, PCI_EXP_DEVCTL, devctl);
 }

 return 0;
}
