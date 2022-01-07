
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct i40e_vsi {int dummy; } ;
struct i40e_vf {size_t lan_vsi_idx; TYPE_1__* pf; int vf_states; } ;
typedef int i40e_status ;
struct TYPE_2__ {struct i40e_vsi** vsi; } ;


 int I40E_ERR_PARAM ;
 int I40E_VF_STATE_ACTIVE ;
 int VIRTCHNL_OP_DISABLE_VLAN_STRIPPING ;
 int i40e_vc_send_resp_to_vf (struct i40e_vf*,int ,int ) ;
 int i40e_vlan_stripping_disable (struct i40e_vsi*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int i40e_vc_disable_vlan_stripping(struct i40e_vf *vf, u8 *msg)
{
 i40e_status aq_ret = 0;
 struct i40e_vsi *vsi;

 if (!test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states)) {
  aq_ret = I40E_ERR_PARAM;
  goto err;
 }

 vsi = vf->pf->vsi[vf->lan_vsi_idx];
 i40e_vlan_stripping_disable(vsi);


err:
 return i40e_vc_send_resp_to_vf(vf, VIRTCHNL_OP_DISABLE_VLAN_STRIPPING,
           aq_ret);
}
