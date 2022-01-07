
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct virtchnl_vlan_filter_list {int num_elements; scalar_t__* vlan_id; int vsi_id; } ;
struct TYPE_3__ {scalar_t__ pvid; } ;
struct i40e_vsi {int seid; TYPE_1__ info; } ;
struct i40e_vf {scalar_t__ num_vlan; size_t lan_vsi_idx; int vf_id; int vf_states; int vf_caps; struct i40e_pf* pf; } ;
struct i40e_pf {TYPE_2__* pdev; int hw; struct i40e_vsi** vsi; } ;
typedef int i40e_status ;
struct TYPE_4__ {int dev; } ;


 int I40E_ERR_PARAM ;
 scalar_t__ I40E_MAX_VLANID ;
 scalar_t__ I40E_VC_MAX_VLAN_PER_VF ;
 int I40E_VF_STATE_ACTIVE ;
 int I40E_VF_STATE_MC_PROMISC ;
 int I40E_VF_STATE_UC_PROMISC ;
 int I40E_VIRTCHNL_VF_CAP_PRIVILEGE ;
 int VIRTCHNL_OP_ADD_VLAN ;
 int dev_err (int *,char*,...) ;
 int i40e_aq_set_vsi_mc_promisc_on_vlan (int *,int ,int,scalar_t__,int *) ;
 int i40e_aq_set_vsi_uc_promisc_on_vlan (int *,int ,int,scalar_t__,int *) ;
 int i40e_vc_isvalid_vsi_id (struct i40e_vf*,int ) ;
 int i40e_vc_send_resp_to_vf (struct i40e_vf*,int ,int ) ;
 int i40e_vlan_stripping_enable (struct i40e_vsi*) ;
 int i40e_vsi_add_vlan (struct i40e_vsi*,scalar_t__) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int i40e_vc_add_vlan_msg(struct i40e_vf *vf, u8 *msg)
{
 struct virtchnl_vlan_filter_list *vfl =
     (struct virtchnl_vlan_filter_list *)msg;
 struct i40e_pf *pf = vf->pf;
 struct i40e_vsi *vsi = ((void*)0);
 i40e_status aq_ret = 0;
 int i;

 if ((vf->num_vlan >= I40E_VC_MAX_VLAN_PER_VF) &&
     !test_bit(I40E_VIRTCHNL_VF_CAP_PRIVILEGE, &vf->vf_caps)) {
  dev_err(&pf->pdev->dev,
   "VF is not trusted, switch the VF to trusted to add more VLAN addresses\n");
  goto error_param;
 }
 if (!test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states) ||
     !i40e_vc_isvalid_vsi_id(vf, vfl->vsi_id)) {
  aq_ret = I40E_ERR_PARAM;
  goto error_param;
 }

 for (i = 0; i < vfl->num_elements; i++) {
  if (vfl->vlan_id[i] > I40E_MAX_VLANID) {
   aq_ret = I40E_ERR_PARAM;
   dev_err(&pf->pdev->dev,
    "invalid VF VLAN id %d\n", vfl->vlan_id[i]);
   goto error_param;
  }
 }
 vsi = pf->vsi[vf->lan_vsi_idx];
 if (vsi->info.pvid) {
  aq_ret = I40E_ERR_PARAM;
  goto error_param;
 }

 i40e_vlan_stripping_enable(vsi);
 for (i = 0; i < vfl->num_elements; i++) {

  int ret = i40e_vsi_add_vlan(vsi, vfl->vlan_id[i]);
  if (!ret)
   vf->num_vlan++;

  if (test_bit(I40E_VF_STATE_UC_PROMISC, &vf->vf_states))
   i40e_aq_set_vsi_uc_promisc_on_vlan(&pf->hw, vsi->seid,
          1,
          vfl->vlan_id[i],
          ((void*)0));
  if (test_bit(I40E_VF_STATE_MC_PROMISC, &vf->vf_states))
   i40e_aq_set_vsi_mc_promisc_on_vlan(&pf->hw, vsi->seid,
          1,
          vfl->vlan_id[i],
          ((void*)0));

  if (ret)
   dev_err(&pf->pdev->dev,
    "Unable to add VLAN filter %d for VF %d, error %d\n",
    vfl->vlan_id[i], vf->vf_id, ret);
 }

error_param:

 return i40e_vc_send_resp_to_vf(vf, VIRTCHNL_OP_ADD_VLAN, aq_ret);
}
