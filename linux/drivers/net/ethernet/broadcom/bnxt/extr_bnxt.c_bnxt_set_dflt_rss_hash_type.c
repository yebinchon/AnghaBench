
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt {int rss_hash_cfg; int hwrm_spec_code; int flags; } ;


 scalar_t__ BNXT_CHIP_P4 (struct bnxt*) ;
 int BNXT_FLAG_UDP_RSS_CAP ;
 int VNIC_RSS_CFG_REQ_HASH_TYPE_IPV4 ;
 int VNIC_RSS_CFG_REQ_HASH_TYPE_IPV6 ;
 int VNIC_RSS_CFG_REQ_HASH_TYPE_TCP_IPV4 ;
 int VNIC_RSS_CFG_REQ_HASH_TYPE_TCP_IPV6 ;
 int VNIC_RSS_CFG_REQ_HASH_TYPE_UDP_IPV4 ;
 int VNIC_RSS_CFG_REQ_HASH_TYPE_UDP_IPV6 ;

__attribute__((used)) static void bnxt_set_dflt_rss_hash_type(struct bnxt *bp)
{
 bp->flags &= ~BNXT_FLAG_UDP_RSS_CAP;
 bp->rss_hash_cfg = VNIC_RSS_CFG_REQ_HASH_TYPE_IPV4 |
      VNIC_RSS_CFG_REQ_HASH_TYPE_TCP_IPV4 |
      VNIC_RSS_CFG_REQ_HASH_TYPE_IPV6 |
      VNIC_RSS_CFG_REQ_HASH_TYPE_TCP_IPV6;
 if (BNXT_CHIP_P4(bp) && bp->hwrm_spec_code >= 0x10501) {
  bp->flags |= BNXT_FLAG_UDP_RSS_CAP;
  bp->rss_hash_cfg |= VNIC_RSS_CFG_REQ_HASH_TYPE_UDP_IPV4 |
        VNIC_RSS_CFG_REQ_HASH_TYPE_UDP_IPV6;
 }
}
