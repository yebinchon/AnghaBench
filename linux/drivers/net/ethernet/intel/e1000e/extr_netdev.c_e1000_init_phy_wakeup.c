
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct TYPE_5__ {int (* acquire ) (struct e1000_hw*) ;int (* release ) (struct e1000_hw*) ;int (* write_reg_page ) (struct e1000_hw*,scalar_t__,scalar_t__) ;int (* read_reg_page ) (struct e1000_hw*,scalar_t__,scalar_t__*) ;} ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct TYPE_4__ {scalar_t__ mta_reg_count; } ;
struct e1000_hw {TYPE_3__ phy; TYPE_1__ mac; } ;
struct e1000_adapter {struct e1000_hw hw; } ;


 scalar_t__ BM_MTA (scalar_t__) ;
 scalar_t__ BM_RCTL ;
 scalar_t__ BM_RCTL_BAM ;
 scalar_t__ BM_RCTL_MO_MASK ;
 scalar_t__ BM_RCTL_MO_SHIFT ;
 scalar_t__ BM_RCTL_MPE ;
 scalar_t__ BM_RCTL_PMCF ;
 scalar_t__ BM_RCTL_RFCE ;
 scalar_t__ BM_RCTL_UPE ;
 scalar_t__ BM_WUC ;
 scalar_t__ BM_WUC_ENABLE_BIT ;
 scalar_t__ BM_WUC_HOST_WU_BIT ;
 scalar_t__ BM_WUFC ;
 int CTRL ;
 scalar_t__ E1000_CTRL_RFCE ;
 int E1000_MTA ;
 scalar_t__ E1000_RCTL_BAM ;
 scalar_t__ E1000_RCTL_MO_3 ;
 scalar_t__ E1000_RCTL_MO_SHIFT ;
 scalar_t__ E1000_RCTL_MPE ;
 scalar_t__ E1000_RCTL_PMCF ;
 scalar_t__ E1000_RCTL_UPE ;
 scalar_t__ E1000_READ_REG_ARRAY (struct e1000_hw*,int ,scalar_t__) ;
 scalar_t__ E1000_WUC_APME ;
 scalar_t__ E1000_WUC_APMPME ;
 scalar_t__ E1000_WUC_PHY_WAKE ;
 scalar_t__ E1000_WUC_PME_EN ;
 scalar_t__ E1000_WUC_PME_STATUS ;
 scalar_t__ E1000_WUFC_LNKC ;
 scalar_t__ E1000_WUFC_MAG ;
 int RCTL ;
 int WUC ;
 int WUFC ;
 int e1000_copy_rx_addrs_to_phy_ich8lan (struct e1000_hw*) ;
 int e1000_disable_phy_wakeup_reg_access_bm (struct e1000_hw*,scalar_t__*) ;
 int e1000_enable_phy_wakeup_reg_access_bm (struct e1000_hw*,scalar_t__*) ;
 int e_err (char*) ;
 scalar_t__ er32 (int ) ;
 int ew32 (int ,scalar_t__) ;
 int stub1 (struct e1000_hw*) ;
 int stub2 (struct e1000_hw*,scalar_t__,scalar_t__) ;
 int stub3 (struct e1000_hw*,scalar_t__,scalar_t__) ;
 int stub4 (struct e1000_hw*,scalar_t__,scalar_t__*) ;
 int stub5 (struct e1000_hw*,scalar_t__,scalar_t__) ;
 int stub6 (struct e1000_hw*,scalar_t__,scalar_t__) ;
 int stub7 (struct e1000_hw*,scalar_t__,scalar_t__) ;
 int stub8 (struct e1000_hw*) ;

__attribute__((used)) static int e1000_init_phy_wakeup(struct e1000_adapter *adapter, u32 wufc)
{
 struct e1000_hw *hw = &adapter->hw;
 u32 i, mac_reg, wuc;
 u16 phy_reg, wuc_enable;
 int retval;


 e1000_copy_rx_addrs_to_phy_ich8lan(hw);

 retval = hw->phy.ops.acquire(hw);
 if (retval) {
  e_err("Could not acquire PHY\n");
  return retval;
 }


 retval = e1000_enable_phy_wakeup_reg_access_bm(hw, &wuc_enable);
 if (retval)
  goto release;


 for (i = 0; i < adapter->hw.mac.mta_reg_count; i++) {
  mac_reg = E1000_READ_REG_ARRAY(hw, E1000_MTA, i);
  hw->phy.ops.write_reg_page(hw, BM_MTA(i),
        (u16)(mac_reg & 0xFFFF));
  hw->phy.ops.write_reg_page(hw, BM_MTA(i) + 1,
        (u16)((mac_reg >> 16) & 0xFFFF));
 }


 hw->phy.ops.read_reg_page(&adapter->hw, BM_RCTL, &phy_reg);
 mac_reg = er32(RCTL);
 if (mac_reg & E1000_RCTL_UPE)
  phy_reg |= BM_RCTL_UPE;
 if (mac_reg & E1000_RCTL_MPE)
  phy_reg |= BM_RCTL_MPE;
 phy_reg &= ~(BM_RCTL_MO_MASK);
 if (mac_reg & E1000_RCTL_MO_3)
  phy_reg |= (((mac_reg & E1000_RCTL_MO_3) >> E1000_RCTL_MO_SHIFT)
       << BM_RCTL_MO_SHIFT);
 if (mac_reg & E1000_RCTL_BAM)
  phy_reg |= BM_RCTL_BAM;
 if (mac_reg & E1000_RCTL_PMCF)
  phy_reg |= BM_RCTL_PMCF;
 mac_reg = er32(CTRL);
 if (mac_reg & E1000_CTRL_RFCE)
  phy_reg |= BM_RCTL_RFCE;
 hw->phy.ops.write_reg_page(&adapter->hw, BM_RCTL, phy_reg);

 wuc = E1000_WUC_PME_EN;
 if (wufc & (E1000_WUFC_MAG | E1000_WUFC_LNKC))
  wuc |= E1000_WUC_APME;


 ew32(WUFC, wufc);
 ew32(WUC, (E1000_WUC_PHY_WAKE | E1000_WUC_APMPME |
     E1000_WUC_PME_STATUS | wuc));


 hw->phy.ops.write_reg_page(&adapter->hw, BM_WUFC, wufc);
 hw->phy.ops.write_reg_page(&adapter->hw, BM_WUC, wuc);


 wuc_enable |= BM_WUC_ENABLE_BIT | BM_WUC_HOST_WU_BIT;
 retval = e1000_disable_phy_wakeup_reg_access_bm(hw, &wuc_enable);
 if (retval)
  e_err("Could not set PHY Host Wakeup bit\n");
release:
 hw->phy.ops.release(hw);

 return retval;
}
