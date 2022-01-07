
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ethhdr {int h_dest; int h_source; scalar_t__ h_proto; } ;
typedef scalar_t__ __be16 ;


 int DPAA2_ETH_DIST_ETHDST ;
 int DPAA2_ETH_DIST_ETHSRC ;
 int DPAA2_ETH_DIST_ETHTYPE ;
 int NET_PROT_ETH ;
 int NH_FLD_ETH_DA ;
 int NH_FLD_ETH_SA ;
 int NH_FLD_ETH_TYPE ;
 int dpaa2_eth_cls_fld_off (int ,int ) ;
 int ether_addr_copy (void*,int ) ;
 int is_zero_ether_addr (int ) ;

__attribute__((used)) static int prep_eth_rule(struct ethhdr *eth_value, struct ethhdr *eth_mask,
    void *key, void *mask, u64 *fields)
{
 int off;

 if (eth_mask->h_proto) {
  off = dpaa2_eth_cls_fld_off(NET_PROT_ETH, NH_FLD_ETH_TYPE);
  *(__be16 *)(key + off) = eth_value->h_proto;
  *(__be16 *)(mask + off) = eth_mask->h_proto;
  *fields |= DPAA2_ETH_DIST_ETHTYPE;
 }

 if (!is_zero_ether_addr(eth_mask->h_source)) {
  off = dpaa2_eth_cls_fld_off(NET_PROT_ETH, NH_FLD_ETH_SA);
  ether_addr_copy(key + off, eth_value->h_source);
  ether_addr_copy(mask + off, eth_mask->h_source);
  *fields |= DPAA2_ETH_DIST_ETHSRC;
 }

 if (!is_zero_ether_addr(eth_mask->h_dest)) {
  off = dpaa2_eth_cls_fld_off(NET_PROT_ETH, NH_FLD_ETH_DA);
  ether_addr_copy(key + off, eth_value->h_dest);
  ether_addr_copy(mask + off, eth_mask->h_dest);
  *fields |= DPAA2_ETH_DIST_ETHDST;
 }

 return 0;
}
