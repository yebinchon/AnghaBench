
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct ethtool_tcpip4_spec {scalar_t__ pdst; scalar_t__ psrc; scalar_t__ ip4dst; scalar_t__ ip4src; scalar_t__ tos; } ;
typedef scalar_t__ __be32 ;
typedef scalar_t__ __be16 ;


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
 int dpaa2_eth_cls_fld_off (int ,int ) ;
 scalar_t__ htons (int) ;

__attribute__((used)) static int prep_l4_rule(struct ethtool_tcpip4_spec *l4_value,
   struct ethtool_tcpip4_spec *l4_mask,
   void *key, void *mask, u8 l4_proto, u64 *fields)
{
 int off;

 if (l4_mask->tos)
  return -EOPNOTSUPP;

 if (l4_mask->ip4src) {
  off = dpaa2_eth_cls_fld_off(NET_PROT_IP, NH_FLD_IP_SRC);
  *(__be32 *)(key + off) = l4_value->ip4src;
  *(__be32 *)(mask + off) = l4_mask->ip4src;
  *fields |= DPAA2_ETH_DIST_IPSRC;
 }

 if (l4_mask->ip4dst) {
  off = dpaa2_eth_cls_fld_off(NET_PROT_IP, NH_FLD_IP_DST);
  *(__be32 *)(key + off) = l4_value->ip4dst;
  *(__be32 *)(mask + off) = l4_mask->ip4dst;
  *fields |= DPAA2_ETH_DIST_IPDST;
 }

 if (l4_mask->psrc) {
  off = dpaa2_eth_cls_fld_off(NET_PROT_UDP, NH_FLD_UDP_PORT_SRC);
  *(__be16 *)(key + off) = l4_value->psrc;
  *(__be16 *)(mask + off) = l4_mask->psrc;
  *fields |= DPAA2_ETH_DIST_L4SRC;
 }

 if (l4_mask->pdst) {
  off = dpaa2_eth_cls_fld_off(NET_PROT_UDP, NH_FLD_UDP_PORT_DST);
  *(__be16 *)(key + off) = l4_value->pdst;
  *(__be16 *)(mask + off) = l4_mask->pdst;
  *fields |= DPAA2_ETH_DIST_L4DST;
 }


 off = dpaa2_eth_cls_fld_off(NET_PROT_ETH, NH_FLD_ETH_TYPE);
 *(__be16 *)(key + off) = htons(ETH_P_IP);
 *(__be16 *)(mask + off) = htons(0xFFFF);
 *fields |= DPAA2_ETH_DIST_ETHTYPE;

 off = dpaa2_eth_cls_fld_off(NET_PROT_IP, NH_FLD_IP_PROTO);
 *(u8 *)(key + off) = l4_proto;
 *(u8 *)(mask + off) = 0xFF;
 *fields |= DPAA2_ETH_DIST_IPPROTO;

 return 0;
}
