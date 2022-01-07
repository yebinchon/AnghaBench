
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;


 int VLAN_TABLE_FID ;
 int VLAN_TABLE_MEMBERSHIP ;
 int VLAN_TABLE_MEMBERSHIP_S ;
 int VLAN_TABLE_VALID ;

__attribute__((used)) static void ksz8795_from_vlan(u16 vlan, u8 *fid, u8 *member, u8 *valid)
{
 *fid = vlan & VLAN_TABLE_FID;
 *member = (vlan & VLAN_TABLE_MEMBERSHIP) >> VLAN_TABLE_MEMBERSHIP_S;
 *valid = !!(vlan & VLAN_TABLE_VALID);
}
