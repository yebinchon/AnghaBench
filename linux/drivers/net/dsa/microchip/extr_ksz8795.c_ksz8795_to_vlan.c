
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int VLAN_TABLE_MEMBERSHIP_S ;
 int VLAN_TABLE_VALID ;

__attribute__((used)) static void ksz8795_to_vlan(u8 fid, u8 member, u8 valid, u16 *vlan)
{
 *vlan = fid;
 *vlan |= (u16)member << VLAN_TABLE_MEMBERSHIP_S;
 if (valid)
  *vlan |= VLAN_TABLE_VALID;
}
