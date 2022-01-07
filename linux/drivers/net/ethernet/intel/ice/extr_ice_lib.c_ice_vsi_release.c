
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_vsi {scalar_t__ type; int * netdev; int state; int idx; int port_info; scalar_t__ num_q_vectors; int base_vector; struct ice_pf* back; } ;
struct ice_pf {int state; int hw; int flags; int num_avail_sw_msix; int irq_tracker; } ;


 int ENODEV ;
 int ICE_FLAG_FW_LLDP_AGENT ;
 int ICE_FLAG_RSS_ENA ;
 scalar_t__ ICE_VSI_LB ;
 scalar_t__ ICE_VSI_PF ;
 scalar_t__ ICE_VSI_VF ;
 int __ICE_DOWN ;
 int free_netdev (int *) ;
 int ice_cfg_sw_lldp (struct ice_vsi*,int,int) ;
 int ice_free_res (int ,int ,int ) ;
 int ice_is_reset_in_progress (int ) ;
 int ice_is_safe_mode (struct ice_pf*) ;
 int ice_remove_vsi_fltr (int *,int ) ;
 int ice_rm_vsi_lan_cfg (int ,int ) ;
 int ice_rss_clean (struct ice_vsi*) ;
 int ice_vsi_add_rem_eth_mac (struct ice_vsi*,int) ;
 int ice_vsi_clear (struct ice_vsi*) ;
 int ice_vsi_clear_rings (struct ice_vsi*) ;
 int ice_vsi_close (struct ice_vsi*) ;
 int ice_vsi_delete (struct ice_vsi*) ;
 int ice_vsi_dis_irq (struct ice_vsi*) ;
 int ice_vsi_free_q_vectors (struct ice_vsi*) ;
 int ice_vsi_put_qs (struct ice_vsi*) ;
 scalar_t__ test_bit (int ,int ) ;
 int unregister_netdev (int *) ;

int ice_vsi_release(struct ice_vsi *vsi)
{
 struct ice_pf *pf;

 if (!vsi->back)
  return -ENODEV;
 pf = vsi->back;







 if (vsi->netdev && !ice_is_reset_in_progress(pf->state))
  unregister_netdev(vsi->netdev);

 if (test_bit(ICE_FLAG_RSS_ENA, pf->flags))
  ice_rss_clean(vsi);


 if (vsi->type != ICE_VSI_LB)
  ice_vsi_dis_irq(vsi);
 ice_vsi_close(vsi);






 if (vsi->type != ICE_VSI_VF) {

  ice_free_res(pf->irq_tracker, vsi->base_vector, vsi->idx);
  pf->num_avail_sw_msix += vsi->num_q_vectors;
 }

 if (!ice_is_safe_mode(pf)) {
  if (vsi->type == ICE_VSI_PF) {
   ice_vsi_add_rem_eth_mac(vsi, 0);
   ice_cfg_sw_lldp(vsi, 1, 0);



   if (!test_bit(ICE_FLAG_FW_LLDP_AGENT, pf->flags))
    ice_cfg_sw_lldp(vsi, 0, 0);
  }
 }

 ice_remove_vsi_fltr(&pf->hw, vsi->idx);
 ice_rm_vsi_lan_cfg(vsi->port_info, vsi->idx);
 ice_vsi_delete(vsi);
 ice_vsi_free_q_vectors(vsi);


 if (vsi->netdev && test_bit(__ICE_DOWN, vsi->state)) {
  free_netdev(vsi->netdev);
  vsi->netdev = ((void*)0);
 }

 ice_vsi_clear_rings(vsi);

 ice_vsi_put_qs(vsi);





 if (!ice_is_reset_in_progress(pf->state))
  ice_vsi_clear(vsi);

 return 0;
}
