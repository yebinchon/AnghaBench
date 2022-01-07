
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct i40e_vsi {scalar_t__ type; scalar_t__ netdev; int state; struct i40e_pf* back; } ;
struct TYPE_4__ {int link_info; } ;
struct TYPE_5__ {TYPE_1__ link_info; } ;
struct TYPE_6__ {TYPE_2__ phy; } ;
struct i40e_pf {int flags; int state; scalar_t__ fd_atr_cnt; scalar_t__ fd_add_err; TYPE_3__ hw; } ;


 int I40E_AQ_LINK_UP ;
 int I40E_FLAG_MSIX_ENABLED ;
 scalar_t__ I40E_VSI_FDIR ;
 int __I40E_CLIENT_SERVICE_REQUESTED ;
 int __I40E_VSI_DOWN ;
 int clear_bit (int ,int ) ;
 int i40e_configure_msi_and_legacy (struct i40e_vsi*) ;
 int i40e_fdir_filter_restore (struct i40e_vsi*) ;
 int i40e_napi_enable_all (struct i40e_vsi*) ;
 int i40e_print_link_message (struct i40e_vsi*,int) ;
 int i40e_service_event_schedule (struct i40e_pf*) ;
 int i40e_vsi_configure_msix (struct i40e_vsi*) ;
 int i40e_vsi_enable_irq (struct i40e_vsi*) ;
 int i40e_vsi_start_rings (struct i40e_vsi*) ;
 int netif_carrier_on (scalar_t__) ;
 int netif_tx_start_all_queues (scalar_t__) ;
 int set_bit (int ,int ) ;

__attribute__((used)) static int i40e_up_complete(struct i40e_vsi *vsi)
{
 struct i40e_pf *pf = vsi->back;
 int err;

 if (pf->flags & I40E_FLAG_MSIX_ENABLED)
  i40e_vsi_configure_msix(vsi);
 else
  i40e_configure_msi_and_legacy(vsi);


 err = i40e_vsi_start_rings(vsi);
 if (err)
  return err;

 clear_bit(__I40E_VSI_DOWN, vsi->state);
 i40e_napi_enable_all(vsi);
 i40e_vsi_enable_irq(vsi);

 if ((pf->hw.phy.link_info.link_info & I40E_AQ_LINK_UP) &&
     (vsi->netdev)) {
  i40e_print_link_message(vsi, 1);
  netif_tx_start_all_queues(vsi->netdev);
  netif_carrier_on(vsi->netdev);
 }


 if (vsi->type == I40E_VSI_FDIR) {

  pf->fd_add_err = 0;
  pf->fd_atr_cnt = 0;
  i40e_fdir_filter_restore(vsi);
 }




 set_bit(__I40E_CLIENT_SERVICE_REQUESTED, pf->state);
 i40e_service_event_schedule(pf);

 return 0;
}
