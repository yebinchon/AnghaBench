
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u16 ;
struct virtchnl_rss_lut {scalar_t__ lut_entries; scalar_t__* lut; int vsi_id; } ;
struct i40e_vsi {int dummy; } ;
struct i40e_vf {scalar_t__ num_queue_pairs; size_t lan_vsi_idx; int vf_states; struct i40e_pf* pf; } ;
struct i40e_pf {struct i40e_vsi** vsi; } ;
typedef int i40e_status ;


 int I40E_ERR_PARAM ;
 scalar_t__ I40E_VF_HLUT_ARRAY_SIZE ;
 int I40E_VF_STATE_ACTIVE ;
 int VIRTCHNL_OP_CONFIG_RSS_LUT ;
 int i40e_config_rss (struct i40e_vsi*,int *,scalar_t__*,scalar_t__) ;
 int i40e_vc_isvalid_vsi_id (struct i40e_vf*,int ) ;
 int i40e_vc_send_resp_to_vf (struct i40e_vf*,int ,int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int i40e_vc_config_rss_lut(struct i40e_vf *vf, u8 *msg)
{
 struct virtchnl_rss_lut *vrl =
  (struct virtchnl_rss_lut *)msg;
 struct i40e_pf *pf = vf->pf;
 struct i40e_vsi *vsi = ((void*)0);
 i40e_status aq_ret = 0;
 u16 i;

 if (!test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states) ||
     !i40e_vc_isvalid_vsi_id(vf, vrl->vsi_id) ||
     (vrl->lut_entries != I40E_VF_HLUT_ARRAY_SIZE)) {
  aq_ret = I40E_ERR_PARAM;
  goto err;
 }

 for (i = 0; i < vrl->lut_entries; i++)
  if (vrl->lut[i] >= vf->num_queue_pairs) {
   aq_ret = I40E_ERR_PARAM;
   goto err;
  }

 vsi = pf->vsi[vf->lan_vsi_idx];
 aq_ret = i40e_config_rss(vsi, ((void*)0), vrl->lut, I40E_VF_HLUT_ARRAY_SIZE);

err:
 return i40e_vc_send_resp_to_vf(vf, VIRTCHNL_OP_CONFIG_RSS_LUT,
           aq_ret);
}
