
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct fm10k_hw {int dummy; } ;
typedef int s32 ;


 int FM10K_ERR_PARAM ;
 int FM10K_VLAN_TABLE (scalar_t__,int) ;
 int FM10K_VLAN_TABLE_VID_MAX ;
 scalar_t__ FM10K_VLAN_TABLE_VSI_MAX ;
 int fm10k_read_reg (struct fm10k_hw*,int) ;
 int fm10k_write_reg (struct fm10k_hw*,int,int) ;

__attribute__((used)) static s32 fm10k_update_vlan_pf(struct fm10k_hw *hw, u32 vid, u8 vsi, bool set)
{
 u32 vlan_table, reg, mask, bit, len;


 if (vsi > FM10K_VLAN_TABLE_VSI_MAX)
  return FM10K_ERR_PARAM;
 len = vid >> 16;
 vid = (vid << 17) >> 17;


 if (len >= FM10K_VLAN_TABLE_VID_MAX || vid >= FM10K_VLAN_TABLE_VID_MAX)
  return FM10K_ERR_PARAM;


 for (reg = FM10K_VLAN_TABLE(vsi, vid / 32), bit = vid % 32;
      len < FM10K_VLAN_TABLE_VID_MAX;
      len -= 32 - bit, reg++, bit = 0) {

  vlan_table = fm10k_read_reg(hw, reg);


  mask = (~(u32)0 >> ((len < 31) ? 31 - len : 0)) << bit;


  mask &= set ? ~vlan_table : vlan_table;
  if (mask)
   fm10k_write_reg(hw, reg, vlan_table ^ mask);
 }

 return 0;
}
