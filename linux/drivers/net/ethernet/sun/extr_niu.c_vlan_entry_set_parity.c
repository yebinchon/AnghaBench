
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int ENET_VLAN_TBL_PARITY0 ;
 int ENET_VLAN_TBL_PARITY1 ;
 int hweight64 (int) ;

__attribute__((used)) static u64 vlan_entry_set_parity(u64 reg_val)
{
 u64 port01_mask;
 u64 port23_mask;

 port01_mask = 0x00ff;
 port23_mask = 0xff00;

 if (hweight64(reg_val & port01_mask) & 1)
  reg_val |= ENET_VLAN_TBL_PARITY0;
 else
  reg_val &= ~ENET_VLAN_TBL_PARITY0;

 if (hweight64(reg_val & port23_mask) & 1)
  reg_val |= ENET_VLAN_TBL_PARITY1;
 else
  reg_val &= ~ENET_VLAN_TBL_PARITY1;

 return reg_val;
}
