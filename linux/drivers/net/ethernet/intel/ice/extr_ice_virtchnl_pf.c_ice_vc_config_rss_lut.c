
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct virtchnl_rss_lut {scalar_t__ lut_entries; int lut; int vsi_id; } ;
struct ice_vsi {int dummy; } ;
struct ice_vf {size_t lan_vsi_idx; struct ice_pf* pf; int vf_states; } ;
struct ice_pf {struct ice_vsi** vsi; int flags; } ;
typedef enum virtchnl_status_code { ____Placeholder_virtchnl_status_code } virtchnl_status_code ;


 int ICE_FLAG_RSS_ENA ;
 int ICE_VF_STATE_ACTIVE ;
 scalar_t__ ICE_VSIQF_HLUT_ARRAY_SIZE ;
 int VIRTCHNL_OP_CONFIG_RSS_LUT ;
 int VIRTCHNL_STATUS_ERR_ADMIN_QUEUE_ERROR ;
 int VIRTCHNL_STATUS_ERR_PARAM ;
 int VIRTCHNL_STATUS_SUCCESS ;
 scalar_t__ ice_set_rss (struct ice_vsi*,int *,int ,scalar_t__) ;
 int ice_vc_isvalid_vsi_id (struct ice_vf*,int ) ;
 int ice_vc_send_msg_to_vf (struct ice_vf*,int ,int,int *,int ) ;
 int test_bit (int ,int ) ;

__attribute__((used)) static int ice_vc_config_rss_lut(struct ice_vf *vf, u8 *msg)
{
 struct virtchnl_rss_lut *vrl = (struct virtchnl_rss_lut *)msg;
 enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
 struct ice_pf *pf = vf->pf;
 struct ice_vsi *vsi = ((void*)0);

 if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
  v_ret = VIRTCHNL_STATUS_ERR_PARAM;
  goto error_param;
 }

 if (!ice_vc_isvalid_vsi_id(vf, vrl->vsi_id)) {
  v_ret = VIRTCHNL_STATUS_ERR_PARAM;
  goto error_param;
 }

 if (vrl->lut_entries != ICE_VSIQF_HLUT_ARRAY_SIZE) {
  v_ret = VIRTCHNL_STATUS_ERR_PARAM;
  goto error_param;
 }

 if (!test_bit(ICE_FLAG_RSS_ENA, vf->pf->flags)) {
  v_ret = VIRTCHNL_STATUS_ERR_PARAM;
  goto error_param;
 }

 vsi = pf->vsi[vf->lan_vsi_idx];
 if (!vsi) {
  v_ret = VIRTCHNL_STATUS_ERR_PARAM;
  goto error_param;
 }

 if (ice_set_rss(vsi, ((void*)0), vrl->lut, ICE_VSIQF_HLUT_ARRAY_SIZE))
  v_ret = VIRTCHNL_STATUS_ERR_ADMIN_QUEUE_ERROR;
error_param:
 return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_CONFIG_RSS_LUT, v_ret,
         ((void*)0), 0);
}
