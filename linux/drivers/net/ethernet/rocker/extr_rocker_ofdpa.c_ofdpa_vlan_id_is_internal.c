
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
typedef int __be16 ;


 scalar_t__ OFDPA_INTERNAL_VLAN_ID_BASE ;
 scalar_t__ ntohs (int ) ;

__attribute__((used)) static bool ofdpa_vlan_id_is_internal(__be16 vlan_id)
{
 u16 start = OFDPA_INTERNAL_VLAN_ID_BASE;
 u16 end = 0xffe;
 u16 _vlan_id = ntohs(vlan_id);

 return (_vlan_id >= start && _vlan_id <= end);
}
