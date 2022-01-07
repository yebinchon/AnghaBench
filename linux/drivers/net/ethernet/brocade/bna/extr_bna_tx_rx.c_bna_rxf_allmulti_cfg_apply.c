
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bna_rxf {int rxmode_active; int rxmode_pending_bitmask; int rxmode_pending; } ;


 int BNA_RXMODE_ALLMULTI ;
 int BNA_STATUS_T_DISABLED ;
 int BNA_STATUS_T_ENABLED ;
 int allmulti_inactive (int ,int ) ;
 int bna_bfi_mcast_filter_req (struct bna_rxf*,int ) ;
 scalar_t__ is_allmulti_disable (int ,int ) ;
 scalar_t__ is_allmulti_enable (int ,int ) ;

__attribute__((used)) static int
bna_rxf_allmulti_cfg_apply(struct bna_rxf *rxf)
{

 if (is_allmulti_enable(rxf->rxmode_pending,
    rxf->rxmode_pending_bitmask)) {

  allmulti_inactive(rxf->rxmode_pending,
    rxf->rxmode_pending_bitmask);
  rxf->rxmode_active |= BNA_RXMODE_ALLMULTI;
  bna_bfi_mcast_filter_req(rxf, BNA_STATUS_T_DISABLED);
  return 1;
 } else if (is_allmulti_disable(rxf->rxmode_pending,
     rxf->rxmode_pending_bitmask)) {

  allmulti_inactive(rxf->rxmode_pending,
    rxf->rxmode_pending_bitmask);
  rxf->rxmode_active &= ~BNA_RXMODE_ALLMULTI;
  bna_bfi_mcast_filter_req(rxf, BNA_STATUS_T_ENABLED);
  return 1;
 }

 return 0;
}
