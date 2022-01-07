
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_5__ {scalar_t__ type; } ;
struct TYPE_4__ {scalar_t__ type; int mc_filter_type; } ;
struct e1000_hw {TYPE_2__ phy; TYPE_1__ mac; } ;
struct e1000_adapter {int flags2; int rx_buffer_len; int rx_ps_pages; int rx_ps_bsize0; int flags; TYPE_3__* netdev; struct e1000_hw hw; } ;
typedef scalar_t__ s32 ;
struct TYPE_6__ {scalar_t__ mtu; int features; } ;


 int BIT (int) ;
 int E1000_PSRCTL_BSIZE0_SHIFT ;
 int E1000_PSRCTL_BSIZE1_SHIFT ;
 int E1000_PSRCTL_BSIZE2_SHIFT ;
 int E1000_PSRCTL_BSIZE3_SHIFT ;
 int E1000_RCTL_BAM ;
 int E1000_RCTL_BSEX ;
 int E1000_RCTL_CFIEN ;
 int E1000_RCTL_DPF ;
 int E1000_RCTL_DTYP_PS ;
 int E1000_RCTL_EN ;
 int E1000_RCTL_LBM_NO ;
 int E1000_RCTL_LPE ;
 int E1000_RCTL_MO_SHIFT ;
 int E1000_RCTL_PMCF ;
 int E1000_RCTL_RDMTS_HALF ;
 int E1000_RCTL_SBP ;
 int E1000_RCTL_SECRC ;
 int E1000_RCTL_SZ_16384 ;
 int E1000_RCTL_SZ_2048 ;
 int E1000_RCTL_SZ_4096 ;
 int E1000_RCTL_SZ_8192 ;
 int E1000_RCTL_VFE ;
 int E1000_RFCTL_EXTEN ;
 scalar_t__ ETH_DATA_LEN ;
 int FLAG2_CRC_STRIPPING ;
 int FLAG_RESTART_NOW ;
 int NETIF_F_RXALL ;
 int PAGE_SIZE ;
 int PAGE_USE_COUNT (scalar_t__) ;
 int PHY_REG (int,int) ;
 int PSRCTL ;
 int RCTL ;
 int RFCTL ;
 scalar_t__ e1000_lv_jumbo_workaround_ich8lan (struct e1000_hw*,int) ;
 scalar_t__ e1000_pch2lan ;
 scalar_t__ e1000_phy_82577 ;
 int e1e_rphy (struct e1000_hw*,int,int*) ;
 int e1e_wphy (struct e1000_hw*,int,int) ;
 int e_dbg (char*) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;

__attribute__((used)) static void e1000_setup_rctl(struct e1000_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 u32 rctl, rfctl;
 u32 pages = 0;





 if (hw->mac.type >= e1000_pch2lan) {
  s32 ret_val;

  if (adapter->netdev->mtu > ETH_DATA_LEN)
   ret_val = e1000_lv_jumbo_workaround_ich8lan(hw, 1);
  else
   ret_val = e1000_lv_jumbo_workaround_ich8lan(hw, 0);

  if (ret_val)
   e_dbg("failed to enable|disable jumbo frame workaround mode\n");
 }


 rctl = er32(RCTL);
 rctl &= ~(3 << E1000_RCTL_MO_SHIFT);
 rctl |= E1000_RCTL_EN | E1000_RCTL_BAM |
     E1000_RCTL_LBM_NO | E1000_RCTL_RDMTS_HALF |
     (adapter->hw.mac.mc_filter_type << E1000_RCTL_MO_SHIFT);


 rctl &= ~E1000_RCTL_SBP;


 if (adapter->netdev->mtu <= ETH_DATA_LEN)
  rctl &= ~E1000_RCTL_LPE;
 else
  rctl |= E1000_RCTL_LPE;





 if (adapter->flags2 & FLAG2_CRC_STRIPPING)
  rctl |= E1000_RCTL_SECRC;


 if ((hw->phy.type == e1000_phy_82577) && (rctl & E1000_RCTL_LPE)) {
  u16 phy_data;

  e1e_rphy(hw, PHY_REG(770, 26), &phy_data);
  phy_data &= 0xfff8;
  phy_data |= BIT(2);
  e1e_wphy(hw, PHY_REG(770, 26), phy_data);

  e1e_rphy(hw, 22, &phy_data);
  phy_data &= 0x0fff;
  phy_data |= BIT(14);
  e1e_wphy(hw, 0x10, 0x2823);
  e1e_wphy(hw, 0x11, 0x0003);
  e1e_wphy(hw, 22, phy_data);
 }


 rctl &= ~E1000_RCTL_SZ_4096;
 rctl |= E1000_RCTL_BSEX;
 switch (adapter->rx_buffer_len) {
 case 2048:
 default:
  rctl |= E1000_RCTL_SZ_2048;
  rctl &= ~E1000_RCTL_BSEX;
  break;
 case 4096:
  rctl |= E1000_RCTL_SZ_4096;
  break;
 case 8192:
  rctl |= E1000_RCTL_SZ_8192;
  break;
 case 16384:
  rctl |= E1000_RCTL_SZ_16384;
  break;
 }


 rfctl = er32(RFCTL);
 rfctl |= E1000_RFCTL_EXTEN;
 ew32(RFCTL, rfctl);
 pages = PAGE_USE_COUNT(adapter->netdev->mtu);
 if ((pages <= 3) && (PAGE_SIZE <= 16384) && (rctl & E1000_RCTL_LPE))
  adapter->rx_ps_pages = pages;
 else
  adapter->rx_ps_pages = 0;

 if (adapter->rx_ps_pages) {
  u32 psrctl = 0;


  rctl |= E1000_RCTL_DTYP_PS;

  psrctl |= adapter->rx_ps_bsize0 >> E1000_PSRCTL_BSIZE0_SHIFT;

  switch (adapter->rx_ps_pages) {
  case 3:
   psrctl |= PAGE_SIZE << E1000_PSRCTL_BSIZE3_SHIFT;

  case 2:
   psrctl |= PAGE_SIZE << E1000_PSRCTL_BSIZE2_SHIFT;

  case 1:
   psrctl |= PAGE_SIZE >> E1000_PSRCTL_BSIZE1_SHIFT;
   break;
  }

  ew32(PSRCTL, psrctl);
 }


 if (adapter->netdev->features & NETIF_F_RXALL) {



  rctl |= (E1000_RCTL_SBP |
    E1000_RCTL_BAM |
    E1000_RCTL_PMCF);

  rctl &= ~(E1000_RCTL_VFE |
     E1000_RCTL_DPF |
     E1000_RCTL_CFIEN);



 }

 ew32(RCTL, rctl);

 adapter->flags &= ~FLAG_RESTART_NOW;
}
