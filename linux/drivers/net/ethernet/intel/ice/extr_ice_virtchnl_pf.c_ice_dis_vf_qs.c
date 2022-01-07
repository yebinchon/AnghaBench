
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_vsi {int dummy; } ;
struct ice_vf {size_t lan_vsi_idx; int vf_id; struct ice_pf* pf; } ;
struct ice_pf {struct ice_vsi** vsi; } ;


 int ICE_NO_RESET ;
 int ice_set_vf_state_qs_dis (struct ice_vf*) ;
 int ice_vsi_stop_lan_tx_rings (struct ice_vsi*,int ,int ) ;
 int ice_vsi_stop_rx_rings (struct ice_vsi*) ;

__attribute__((used)) static void ice_dis_vf_qs(struct ice_vf *vf)
{
 struct ice_pf *pf = vf->pf;
 struct ice_vsi *vsi;

 vsi = pf->vsi[vf->lan_vsi_idx];

 ice_vsi_stop_lan_tx_rings(vsi, ICE_NO_RESET, vf->vf_id);
 ice_vsi_stop_rx_rings(vsi);
 ice_set_vf_state_qs_dis(vf);
}
