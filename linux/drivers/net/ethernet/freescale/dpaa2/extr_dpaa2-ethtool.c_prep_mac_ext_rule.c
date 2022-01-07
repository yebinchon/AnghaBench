
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ethtool_flow_ext {int h_dest; } ;


 int DPAA2_ETH_DIST_ETHDST ;
 int NET_PROT_ETH ;
 int NH_FLD_ETH_DA ;
 int dpaa2_eth_cls_fld_off (int ,int ) ;
 int ether_addr_copy (void*,int ) ;
 int is_zero_ether_addr (int ) ;

__attribute__((used)) static int prep_mac_ext_rule(struct ethtool_flow_ext *ext_value,
        struct ethtool_flow_ext *ext_mask,
        void *key, void *mask, u64 *fields)
{
 int off;

 if (!is_zero_ether_addr(ext_mask->h_dest)) {
  off = dpaa2_eth_cls_fld_off(NET_PROT_ETH, NH_FLD_ETH_DA);
  ether_addr_copy(key + off, ext_value->h_dest);
  ether_addr_copy(mask + off, ext_mask->h_dest);
  *fields |= DPAA2_ETH_DIST_ETHDST;
 }

 return 0;
}
