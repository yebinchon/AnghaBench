
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct bna_rxf {int ucast_pending_set; int cam_fltr_cbarg; int * cam_fltr_cbfn; TYPE_3__* ucast_pending_mac; TYPE_1__* rx; } ;
struct bna_rx {TYPE_2__* bna; struct bna_rxf rxf; } ;
typedef enum bna_cb_status { ____Placeholder_bna_cb_status } bna_cb_status ;
struct TYPE_6__ {int addr; } ;
struct TYPE_5__ {int bnad; } ;
struct TYPE_4__ {int bna; } ;


 int BNA_CB_SUCCESS ;
 int BNA_CB_UCAST_CAM_FULL ;
 int RXF_E_CONFIG ;
 int bfa_fsm_send_event (struct bna_rxf*,int ) ;
 TYPE_3__* bna_cam_mod_mac_get (int ) ;
 int bna_ucam_mod_free_q (int ) ;
 int ether_addr_copy (int ,int const*) ;

enum bna_cb_status
bna_rx_ucast_set(struct bna_rx *rx, const u8 *ucmac)
{
 struct bna_rxf *rxf = &rx->rxf;

 if (rxf->ucast_pending_mac == ((void*)0)) {
  rxf->ucast_pending_mac =
   bna_cam_mod_mac_get(bna_ucam_mod_free_q(rxf->rx->bna));
  if (rxf->ucast_pending_mac == ((void*)0))
   return BNA_CB_UCAST_CAM_FULL;
 }

 ether_addr_copy(rxf->ucast_pending_mac->addr, ucmac);
 rxf->ucast_pending_set = 1;
 rxf->cam_fltr_cbfn = ((void*)0);
 rxf->cam_fltr_cbarg = rx->bna->bnad;

 bfa_fsm_send_event(rxf, RXF_E_CONFIG);

 return BNA_CB_SUCCESS;
}
