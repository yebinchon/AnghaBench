
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct e1000_hw {scalar_t__ phy_id; int phy_revision; int mac_type; } ;
typedef scalar_t__ s32 ;


 scalar_t__ E1000_ERR_CONFIG ;
 scalar_t__ E1000_ERR_PHY ;
 scalar_t__ E1000_SUCCESS ;
 int IGP01E1000_I_PHY_ID ;
 int M88E1000_E_PHY_ID ;
 int M88E1000_I_PHY_ID ;
 int M88E1011_I_PHY_ID ;
 int M88E1118_E_PHY_ID ;
 int PHY_ID1 ;
 int PHY_ID2 ;
 int PHY_REVISION_MASK ;
 int RTL8201N_PHY_ID ;
 int RTL8211B_PHY_ID ;
 scalar_t__ e1000_read_phy_reg (struct e1000_hw*,int ,int*) ;
 scalar_t__ e1000_set_phy_type (struct e1000_hw*) ;
 int e_dbg (char*,int) ;
 int udelay (int) ;

__attribute__((used)) static s32 e1000_detect_gig_phy(struct e1000_hw *hw)
{
 s32 phy_init_status, ret_val;
 u16 phy_id_high, phy_id_low;
 bool match = 0;

 if (hw->phy_id != 0)
  return E1000_SUCCESS;


 ret_val = e1000_read_phy_reg(hw, PHY_ID1, &phy_id_high);
 if (ret_val)
  return ret_val;

 hw->phy_id = (u32)(phy_id_high << 16);
 udelay(20);
 ret_val = e1000_read_phy_reg(hw, PHY_ID2, &phy_id_low);
 if (ret_val)
  return ret_val;

 hw->phy_id |= (u32)(phy_id_low & PHY_REVISION_MASK);
 hw->phy_revision = (u32)phy_id_low & ~PHY_REVISION_MASK;

 switch (hw->mac_type) {
 case 136:
  if (hw->phy_id == M88E1000_E_PHY_ID)
   match = 1;
  break;
 case 135:
  if (hw->phy_id == M88E1000_I_PHY_ID)
   match = 1;
  break;
 case 139:
 case 134:
 case 133:
 case 132:
 case 131:
  if (hw->phy_id == M88E1011_I_PHY_ID)
   match = 1;
  break;
 case 128:
  if ((hw->phy_id == RTL8211B_PHY_ID) ||
      (hw->phy_id == RTL8201N_PHY_ID) ||
      (hw->phy_id == M88E1118_E_PHY_ID))
   match = 1;
  break;
 case 138:
 case 137:
 case 130:
 case 129:
  if (hw->phy_id == IGP01E1000_I_PHY_ID)
   match = 1;
  break;
 default:
  e_dbg("Invalid MAC type %d\n", hw->mac_type);
  return -E1000_ERR_CONFIG;
 }
 phy_init_status = e1000_set_phy_type(hw);

 if ((match) && (phy_init_status == E1000_SUCCESS)) {
  e_dbg("PHY ID 0x%X detected\n", hw->phy_id);
  return E1000_SUCCESS;
 }
 e_dbg("Invalid PHY ID 0x%X\n", hw->phy_id);
 return -E1000_ERR_PHY;
}
