
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_rxf {int dummy; } ;


 int BNA_SOFT_CLEANUP ;
 int bna_rxf_allmulti_cfg_reset (struct bna_rxf*,int ) ;
 int bna_rxf_mcast_cfg_reset (struct bna_rxf*,int ) ;
 int bna_rxf_promisc_cfg_reset (struct bna_rxf*,int ) ;
 int bna_rxf_rss_cfg_soft_reset (struct bna_rxf*) ;
 int bna_rxf_ucast_cfg_reset (struct bna_rxf*,int ) ;
 int bna_rxf_vlan_cfg_soft_reset (struct bna_rxf*) ;

__attribute__((used)) static void
bna_rxf_cfg_reset(struct bna_rxf *rxf)
{
 bna_rxf_ucast_cfg_reset(rxf, BNA_SOFT_CLEANUP);
 bna_rxf_mcast_cfg_reset(rxf, BNA_SOFT_CLEANUP);
 bna_rxf_promisc_cfg_reset(rxf, BNA_SOFT_CLEANUP);
 bna_rxf_allmulti_cfg_reset(rxf, BNA_SOFT_CLEANUP);
 bna_rxf_vlan_cfg_soft_reset(rxf);
 bna_rxf_rss_cfg_soft_reset(rxf);
}
