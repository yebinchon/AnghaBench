
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct bnxt {int rss_hash_cfg; } ;


 int RXH_IP_DST ;
 int RXH_IP_SRC ;
 int VNIC_RSS_CFG_REQ_HASH_TYPE_IPV6 ;

__attribute__((used)) static u64 get_ethtool_ipv6_rss(struct bnxt *bp)
{
 if (bp->rss_hash_cfg & VNIC_RSS_CFG_REQ_HASH_TYPE_IPV6)
  return RXH_IP_SRC | RXH_IP_DST;
 return 0;
}
