
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bna_rxf {int cam_fltr_cbarg; int * cam_fltr_cbfn; TYPE_1__* rx; } ;
struct bna_rx {TYPE_2__* bna; struct bna_rxf rxf; } ;
typedef enum bna_rxmode { ____Placeholder_bna_rxmode } bna_rxmode ;
typedef enum bna_cb_status { ____Placeholder_bna_cb_status } bna_cb_status ;
struct TYPE_4__ {scalar_t__ promisc_rid; scalar_t__ default_mode_rid; int bnad; } ;
struct TYPE_3__ {scalar_t__ rid; } ;


 scalar_t__ BFI_INVALID_RID ;
 int BNA_CB_FAIL ;
 int BNA_CB_SUCCESS ;
 int RXF_E_CONFIG ;
 int bfa_fsm_send_event (struct bna_rxf*,int ) ;
 scalar_t__ bna_rxf_allmulti_disable (struct bna_rxf*) ;
 scalar_t__ bna_rxf_allmulti_enable (struct bna_rxf*) ;
 scalar_t__ bna_rxf_promisc_disable (struct bna_rxf*) ;
 scalar_t__ bna_rxf_promisc_enable (struct bna_rxf*) ;
 scalar_t__ is_allmulti_disable (int,int) ;
 scalar_t__ is_allmulti_enable (int,int) ;
 scalar_t__ is_default_enable (int,int) ;
 scalar_t__ is_promisc_disable (int,int) ;
 scalar_t__ is_promisc_enable (int,int) ;

enum bna_cb_status
bna_rx_mode_set(struct bna_rx *rx, enum bna_rxmode new_mode,
  enum bna_rxmode bitmask)
{
 struct bna_rxf *rxf = &rx->rxf;
 int need_hw_config = 0;



 if (is_promisc_enable(new_mode, bitmask)) {

  if ((rx->bna->promisc_rid != BFI_INVALID_RID) &&
   (rx->bna->promisc_rid != rxf->rx->rid))
   goto err_return;


  if (rx->bna->default_mode_rid != BFI_INVALID_RID)
   goto err_return;


  if (is_default_enable(new_mode, bitmask))
   goto err_return;
 }

 if (is_default_enable(new_mode, bitmask)) {

  if ((rx->bna->default_mode_rid != BFI_INVALID_RID) &&
   (rx->bna->default_mode_rid != rxf->rx->rid)) {
    goto err_return;
  }


  if (rx->bna->promisc_rid != BFI_INVALID_RID)
   goto err_return;
 }



 if (is_promisc_enable(new_mode, bitmask)) {
  if (bna_rxf_promisc_enable(rxf))
   need_hw_config = 1;
 } else if (is_promisc_disable(new_mode, bitmask)) {
  if (bna_rxf_promisc_disable(rxf))
   need_hw_config = 1;
 }

 if (is_allmulti_enable(new_mode, bitmask)) {
  if (bna_rxf_allmulti_enable(rxf))
   need_hw_config = 1;
 } else if (is_allmulti_disable(new_mode, bitmask)) {
  if (bna_rxf_allmulti_disable(rxf))
   need_hw_config = 1;
 }



 if (need_hw_config) {
  rxf->cam_fltr_cbfn = ((void*)0);
  rxf->cam_fltr_cbarg = rx->bna->bnad;
  bfa_fsm_send_event(rxf, RXF_E_CONFIG);
 }

 return BNA_CB_SUCCESS;

err_return:
 return BNA_CB_FAIL;
}
