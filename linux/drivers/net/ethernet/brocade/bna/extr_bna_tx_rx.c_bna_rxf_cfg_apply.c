
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_rxf {int dummy; } ;


 scalar_t__ bna_rxf_allmulti_cfg_apply (struct bna_rxf*) ;
 scalar_t__ bna_rxf_mcast_cfg_apply (struct bna_rxf*) ;
 scalar_t__ bna_rxf_promisc_cfg_apply (struct bna_rxf*) ;
 scalar_t__ bna_rxf_rss_cfg_apply (struct bna_rxf*) ;
 scalar_t__ bna_rxf_ucast_cfg_apply (struct bna_rxf*) ;
 scalar_t__ bna_rxf_vlan_cfg_apply (struct bna_rxf*) ;
 scalar_t__ bna_rxf_vlan_strip_cfg_apply (struct bna_rxf*) ;

__attribute__((used)) static int
bna_rxf_cfg_apply(struct bna_rxf *rxf)
{
 if (bna_rxf_ucast_cfg_apply(rxf))
  return 1;

 if (bna_rxf_mcast_cfg_apply(rxf))
  return 1;

 if (bna_rxf_promisc_cfg_apply(rxf))
  return 1;

 if (bna_rxf_allmulti_cfg_apply(rxf))
  return 1;

 if (bna_rxf_vlan_cfg_apply(rxf))
  return 1;

 if (bna_rxf_vlan_strip_cfg_apply(rxf))
  return 1;

 if (bna_rxf_rss_cfg_apply(rxf))
  return 1;

 return 0;
}
