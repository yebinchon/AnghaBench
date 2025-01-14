
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct ksz_hw {int dummy; } ;


 int TABLE_VLAN ;
 int VLAN_TABLE_FID ;
 int VLAN_TABLE_FID_SHIFT ;
 int VLAN_TABLE_MEMBERSHIP ;
 int VLAN_TABLE_MEMBERSHIP_SHIFT ;
 int VLAN_TABLE_VALID ;
 int VLAN_TABLE_VID ;
 int sw_r_table (struct ksz_hw*,int ,scalar_t__,int*) ;

__attribute__((used)) static int sw_r_vlan_table(struct ksz_hw *hw, u16 addr, u16 *vid, u8 *fid,
 u8 *member)
{
 u32 data;

 sw_r_table(hw, TABLE_VLAN, addr, &data);
 if (data & VLAN_TABLE_VALID) {
  *vid = (u16)(data & VLAN_TABLE_VID);
  *fid = (u8)((data & VLAN_TABLE_FID) >> VLAN_TABLE_FID_SHIFT);
  *member = (u8)((data & VLAN_TABLE_MEMBERSHIP) >>
   VLAN_TABLE_MEMBERSHIP_SHIFT);
  return 0;
 }
 return -1;
}
