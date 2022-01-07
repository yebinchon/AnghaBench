
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct virtchnl_vlan_filter_list {int num_elements; scalar_t__* vlan_id; int vsi_id; } ;
struct TYPE_2__ {scalar_t__ pvid; } ;
struct i40e_vsi {int seid; TYPE_1__ info; } ;
struct i40e_vf {size_t lan_vsi_idx; int vf_states; int num_vlan; struct i40e_pf* pf; } ;
struct i40e_pf {int hw; struct i40e_vsi** vsi; } ;
typedef int i40e_status ;


 int I40E_ERR_PARAM ;
 scalar_t__ I40E_MAX_VLANID ;
 int I40E_VF_STATE_ACTIVE ;
 int I40E_VF_STATE_MC_PROMISC ;
 int I40E_VF_STATE_UC_PROMISC ;
 int VIRTCHNL_OP_DEL_VLAN ;
 int i40e_aq_set_vsi_mc_promisc_on_vlan (int *,int ,int,scalar_t__,int *) ;
 int i40e_aq_set_vsi_uc_promisc_on_vlan (int *,int ,int,scalar_t__,int *) ;
 int i40e_vc_isvalid_vsi_id (struct i40e_vf*,int ) ;
 int i40e_vc_send_resp_to_vf (struct i40e_vf*,int ,int ) ;
 int i40e_vsi_kill_vlan (struct i40e_vsi*,scalar_t__) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int i40e_vc_remove_vlan_msg(struct i40e_vf *vf, u8 *msg)
{
 struct virtchnl_vlan_filter_list *vfl =
     (struct virtchnl_vlan_filter_list *)msg;
 struct i40e_pf *pf = vf->pf;
 struct i40e_vsi *vsi = ((void*)0);
 i40e_status aq_ret = 0;
 int i;

 if (!test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states) ||
     !i40e_vc_isvalid_vsi_id(vf, vfl->vsi_id)) {
  aq_ret = I40E_ERR_PARAM;
  goto error_param;
 }

 for (i = 0; i < vfl->num_elements; i++) {
  if (vfl->vlan_id[i] > I40E_MAX_VLANID) {
   aq_ret = I40E_ERR_PARAM;
   goto error_param;
  }
 }

 vsi = pf->vsi[vf->lan_vsi_idx];
 if (vsi->info.pvid) {
  if (vfl->num_elements > 1 || vfl->vlan_id[0])
   aq_ret = I40E_ERR_PARAM;
  goto error_param;
 }

 for (i = 0; i < vfl->num_elements; i++) {
  i40e_vsi_kill_vlan(vsi, vfl->vlan_id[i]);
  vf->num_vlan--;

  if (test_bit(I40E_VF_STATE_UC_PROMISC, &vf->vf_states))
   i40e_aq_set_vsi_uc_promisc_on_vlan(&pf->hw, vsi->seid,
          0,
          vfl->vlan_id[i],
          ((void*)0));
  if (test_bit(I40E_VF_STATE_MC_PROMISC, &vf->vf_states))
   i40e_aq_set_vsi_mc_promisc_on_vlan(&pf->hw, vsi->seid,
          0,
          vfl->vlan_id[i],
          ((void*)0));
 }

error_param:

 return i40e_vc_send_resp_to_vf(vf, VIRTCHNL_OP_DEL_VLAN, aq_ret);
}
