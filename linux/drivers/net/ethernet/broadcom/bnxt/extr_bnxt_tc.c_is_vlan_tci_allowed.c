
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be16 ;


 scalar_t__ is_vid_exactmatch (int ) ;
 scalar_t__ is_vlan_pcp_exactmatch (int ) ;
 scalar_t__ is_vlan_pcp_wildcarded (int ) ;
 scalar_t__ is_vlan_pcp_zero (int ) ;

__attribute__((used)) static bool is_vlan_tci_allowed(__be16 vlan_tci_mask,
    __be16 vlan_tci)
{



 if (is_vid_exactmatch(vlan_tci_mask) &&
     ((is_vlan_pcp_exactmatch(vlan_tci_mask) &&
       is_vlan_pcp_zero(vlan_tci)) ||
      is_vlan_pcp_wildcarded(vlan_tci_mask)))
  return 1;

 return 0;
}
