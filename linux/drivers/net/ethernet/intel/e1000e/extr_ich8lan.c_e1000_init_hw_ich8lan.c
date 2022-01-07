
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_4__ {scalar_t__ (* setup_link ) (struct e1000_hw*) ;scalar_t__ (* id_led_init ) (struct e1000_hw*) ;} ;
struct e1000_mac_info {scalar_t__ type; TYPE_2__ ops; int mta_reg_count; int rar_entry_count; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ phy; struct e1000_mac_info mac; } ;
typedef scalar_t__ s32 ;


 int BM_PORT_GEN_CFG ;
 int BM_WUC_HOST_WU_BIT ;
 int CTRL_EXT ;
 int E1000_CTRL_EXT_RO_DIS ;
 int E1000_MTA ;
 int E1000_TXDCTL_FULL_TX_DESC_WB ;
 int E1000_TXDCTL_MAX_TX_DESC_PREFETCH ;
 int E1000_TXDCTL_PTHRESH ;
 int E1000_TXDCTL_WTHRESH ;
 int E1000_WRITE_REG_ARRAY (struct e1000_hw*,int ,int ,int ) ;
 int PCIE_ICH8_SNOOP_ALL ;
 scalar_t__ PCIE_NO_SNOOP_ALL ;
 int TXDCTL (int) ;
 int e1000_clear_hw_cntrs_ich8lan (struct e1000_hw*) ;
 scalar_t__ e1000_ich8lan ;
 int e1000_initialize_hw_bits_ich8lan (struct e1000_hw*) ;
 scalar_t__ e1000_phy_82578 ;
 scalar_t__ e1000_phy_hw_reset_ich8lan (struct e1000_hw*) ;
 int e1000e_init_rx_addrs (struct e1000_hw*,int ) ;
 int e1000e_set_pcie_no_snoop (struct e1000_hw*,int) ;
 int e1e_rphy (struct e1000_hw*,int ,int *) ;
 int e1e_wphy (struct e1000_hw*,int ,int ) ;
 int e_dbg (char*) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;
 scalar_t__ stub1 (struct e1000_hw*) ;
 scalar_t__ stub2 (struct e1000_hw*) ;

__attribute__((used)) static s32 e1000_init_hw_ich8lan(struct e1000_hw *hw)
{
 struct e1000_mac_info *mac = &hw->mac;
 u32 ctrl_ext, txdctl, snoop;
 s32 ret_val;
 u16 i;

 e1000_initialize_hw_bits_ich8lan(hw);


 ret_val = mac->ops.id_led_init(hw);

 if (ret_val)
  e_dbg("Error initializing identification LED\n");


 e1000e_init_rx_addrs(hw, mac->rar_entry_count);


 e_dbg("Zeroing the MTA\n");
 for (i = 0; i < mac->mta_reg_count; i++)
  E1000_WRITE_REG_ARRAY(hw, E1000_MTA, i, 0);





 if (hw->phy.type == e1000_phy_82578) {
  e1e_rphy(hw, BM_PORT_GEN_CFG, &i);
  i &= ~BM_WUC_HOST_WU_BIT;
  e1e_wphy(hw, BM_PORT_GEN_CFG, i);
  ret_val = e1000_phy_hw_reset_ich8lan(hw);
  if (ret_val)
   return ret_val;
 }


 ret_val = mac->ops.setup_link(hw);


 txdctl = er32(TXDCTL(0));
 txdctl = ((txdctl & ~E1000_TXDCTL_WTHRESH) |
    E1000_TXDCTL_FULL_TX_DESC_WB);
 txdctl = ((txdctl & ~E1000_TXDCTL_PTHRESH) |
    E1000_TXDCTL_MAX_TX_DESC_PREFETCH);
 ew32(TXDCTL(0), txdctl);
 txdctl = er32(TXDCTL(1));
 txdctl = ((txdctl & ~E1000_TXDCTL_WTHRESH) |
    E1000_TXDCTL_FULL_TX_DESC_WB);
 txdctl = ((txdctl & ~E1000_TXDCTL_PTHRESH) |
    E1000_TXDCTL_MAX_TX_DESC_PREFETCH);
 ew32(TXDCTL(1), txdctl);




 if (mac->type == e1000_ich8lan)
  snoop = PCIE_ICH8_SNOOP_ALL;
 else
  snoop = (u32)~(PCIE_NO_SNOOP_ALL);
 e1000e_set_pcie_no_snoop(hw, snoop);

 ctrl_ext = er32(CTRL_EXT);
 ctrl_ext |= E1000_CTRL_EXT_RO_DIS;
 ew32(CTRL_EXT, ctrl_ext);






 e1000_clear_hw_cntrs_ich8lan(hw);

 return ret_val;
}
