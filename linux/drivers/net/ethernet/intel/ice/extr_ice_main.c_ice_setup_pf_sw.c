
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ice_vsi {TYPE_2__* netdev; } ;
struct TYPE_4__ {int port_info; } ;
struct ice_pf {TYPE_1__ hw; int state; } ;
struct TYPE_5__ {scalar_t__ reg_state; } ;


 int EBUSY ;
 int ENODEV ;
 int ENOMEM ;
 scalar_t__ NETREG_REGISTERED ;
 int free_netdev (TYPE_2__*) ;
 int ice_cfg_netdev (struct ice_vsi*) ;
 int ice_init_mac_fltr (struct ice_pf*) ;
 scalar_t__ ice_is_reset_in_progress (int ) ;
 int ice_napi_add (struct ice_vsi*) ;
 int ice_napi_del (struct ice_vsi*) ;
 struct ice_vsi* ice_pf_vsi_setup (struct ice_pf*,int ) ;
 int ice_vsi_clear (struct ice_vsi*) ;
 int ice_vsi_delete (struct ice_vsi*) ;
 int ice_vsi_free_q_vectors (struct ice_vsi*) ;
 int ice_vsi_put_qs (struct ice_vsi*) ;
 int unregister_netdev (TYPE_2__*) ;

__attribute__((used)) static int ice_setup_pf_sw(struct ice_pf *pf)
{
 struct ice_vsi *vsi;
 int status = 0;

 if (ice_is_reset_in_progress(pf->state))
  return -EBUSY;

 vsi = ice_pf_vsi_setup(pf, pf->hw.port_info);
 if (!vsi) {
  status = -ENOMEM;
  goto unroll_vsi_setup;
 }

 status = ice_cfg_netdev(vsi);
 if (status) {
  status = -ENODEV;
  goto unroll_vsi_setup;
 }





 ice_napi_add(vsi);

 status = ice_init_mac_fltr(pf);
 if (status)
  goto unroll_napi_add;

 return status;

unroll_napi_add:
 if (vsi) {
  ice_napi_del(vsi);
  if (vsi->netdev) {
   if (vsi->netdev->reg_state == NETREG_REGISTERED)
    unregister_netdev(vsi->netdev);
   free_netdev(vsi->netdev);
   vsi->netdev = ((void*)0);
  }
 }

unroll_vsi_setup:
 if (vsi) {
  ice_vsi_free_q_vectors(vsi);
  ice_vsi_delete(vsi);
  ice_vsi_put_qs(vsi);
  ice_vsi_clear(vsi);
 }
 return status;
}
