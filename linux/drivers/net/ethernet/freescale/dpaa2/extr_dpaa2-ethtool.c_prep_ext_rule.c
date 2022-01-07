
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ethtool_flow_ext {scalar_t__ vlan_tci; scalar_t__ vlan_etype; } ;
typedef scalar_t__ __be16 ;


 int DPAA2_ETH_DIST_VLAN ;
 int EOPNOTSUPP ;
 int NET_PROT_VLAN ;
 int NH_FLD_VLAN_TCI ;
 int dpaa2_eth_cls_fld_off (int ,int ) ;

__attribute__((used)) static int prep_ext_rule(struct ethtool_flow_ext *ext_value,
    struct ethtool_flow_ext *ext_mask,
    void *key, void *mask, u64 *fields)
{
 int off;

 if (ext_mask->vlan_etype)
  return -EOPNOTSUPP;

 if (ext_mask->vlan_tci) {
  off = dpaa2_eth_cls_fld_off(NET_PROT_VLAN, NH_FLD_VLAN_TCI);
  *(__be16 *)(key + off) = ext_value->vlan_tci;
  *(__be16 *)(mask + off) = ext_mask->vlan_tci;
  *fields |= DPAA2_ETH_DIST_VLAN;
 }

 return 0;
}
