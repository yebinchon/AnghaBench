
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u64 ;
typedef int u32 ;
struct ethtool_usrip4_spec {scalar_t__ l4_4_bytes; scalar_t__ proto; scalar_t__ ip4dst; scalar_t__ ip4src; scalar_t__ ip_ver; scalar_t__ tos; } ;
typedef scalar_t__ __be32 ;
typedef int __be16 ;


 int DPAA2_ETH_DIST_ETHTYPE ;
 int DPAA2_ETH_DIST_IPDST ;
 int DPAA2_ETH_DIST_IPPROTO ;
 int DPAA2_ETH_DIST_IPSRC ;
 int DPAA2_ETH_DIST_L4DST ;
 int DPAA2_ETH_DIST_L4SRC ;
 int EOPNOTSUPP ;
 int ETH_P_IP ;
 int NET_PROT_ETH ;
 int NET_PROT_IP ;
 int NET_PROT_UDP ;
 int NH_FLD_ETH_TYPE ;
 int NH_FLD_IP_DST ;
 int NH_FLD_IP_PROTO ;
 int NH_FLD_IP_SRC ;
 int NH_FLD_UDP_PORT_DST ;
 int NH_FLD_UDP_PORT_SRC ;
 int be32_to_cpu (scalar_t__) ;
 int dpaa2_eth_cls_fld_off (int ,int ) ;
 int htons (int) ;

__attribute__((used)) static int prep_uip_rule(struct ethtool_usrip4_spec *uip_value,
    struct ethtool_usrip4_spec *uip_mask,
    void *key, void *mask, u64 *fields)
{
 int off;
 u32 tmp_value, tmp_mask;

 if (uip_mask->tos || uip_mask->ip_ver)
  return -EOPNOTSUPP;

 if (uip_mask->ip4src) {
  off = dpaa2_eth_cls_fld_off(NET_PROT_IP, NH_FLD_IP_SRC);
  *(__be32 *)(key + off) = uip_value->ip4src;
  *(__be32 *)(mask + off) = uip_mask->ip4src;
  *fields |= DPAA2_ETH_DIST_IPSRC;
 }

 if (uip_mask->ip4dst) {
  off = dpaa2_eth_cls_fld_off(NET_PROT_IP, NH_FLD_IP_DST);
  *(__be32 *)(key + off) = uip_value->ip4dst;
  *(__be32 *)(mask + off) = uip_mask->ip4dst;
  *fields |= DPAA2_ETH_DIST_IPDST;
 }

 if (uip_mask->proto) {
  off = dpaa2_eth_cls_fld_off(NET_PROT_IP, NH_FLD_IP_PROTO);
  *(u8 *)(key + off) = uip_value->proto;
  *(u8 *)(mask + off) = uip_mask->proto;
  *fields |= DPAA2_ETH_DIST_IPPROTO;
 }

 if (uip_mask->l4_4_bytes) {
  tmp_value = be32_to_cpu(uip_value->l4_4_bytes);
  tmp_mask = be32_to_cpu(uip_mask->l4_4_bytes);

  off = dpaa2_eth_cls_fld_off(NET_PROT_UDP, NH_FLD_UDP_PORT_SRC);
  *(__be16 *)(key + off) = htons(tmp_value >> 16);
  *(__be16 *)(mask + off) = htons(tmp_mask >> 16);
  *fields |= DPAA2_ETH_DIST_L4SRC;

  off = dpaa2_eth_cls_fld_off(NET_PROT_UDP, NH_FLD_UDP_PORT_DST);
  *(__be16 *)(key + off) = htons(tmp_value & 0xFFFF);
  *(__be16 *)(mask + off) = htons(tmp_mask & 0xFFFF);
  *fields |= DPAA2_ETH_DIST_L4DST;
 }


 off = dpaa2_eth_cls_fld_off(NET_PROT_ETH, NH_FLD_ETH_TYPE);
 *(__be16 *)(key + off) = htons(ETH_P_IP);
 *(__be16 *)(mask + off) = htons(0xFFFF);
 *fields |= DPAA2_ETH_DIST_ETHTYPE;

 return 0;
}
