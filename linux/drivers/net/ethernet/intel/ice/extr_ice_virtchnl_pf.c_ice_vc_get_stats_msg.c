
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct virtchnl_queue_select {int vsi_id; } ;
struct ice_eth_stats {int dummy; } ;
struct ice_vsi {struct ice_eth_stats eth_stats; } ;
struct ice_vf {size_t lan_vsi_idx; int vf_states; struct ice_pf* pf; } ;
struct ice_pf {struct ice_vsi** vsi; } ;
typedef int stats ;
typedef enum virtchnl_status_code { ____Placeholder_virtchnl_status_code } virtchnl_status_code ;


 int ICE_VF_STATE_ACTIVE ;
 int VIRTCHNL_OP_GET_STATS ;
 int VIRTCHNL_STATUS_ERR_PARAM ;
 int VIRTCHNL_STATUS_SUCCESS ;
 int ice_update_eth_stats (struct ice_vsi*) ;
 int ice_vc_isvalid_vsi_id (struct ice_vf*,int ) ;
 int ice_vc_send_msg_to_vf (struct ice_vf*,int ,int,int *,int) ;
 int memset (struct ice_eth_stats*,int ,int) ;
 int test_bit (int ,int ) ;

__attribute__((used)) static int ice_vc_get_stats_msg(struct ice_vf *vf, u8 *msg)
{
 enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
 struct virtchnl_queue_select *vqs =
  (struct virtchnl_queue_select *)msg;
 struct ice_pf *pf = vf->pf;
 struct ice_eth_stats stats;
 struct ice_vsi *vsi;

 if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
  v_ret = VIRTCHNL_STATUS_ERR_PARAM;
  goto error_param;
 }

 if (!ice_vc_isvalid_vsi_id(vf, vqs->vsi_id)) {
  v_ret = VIRTCHNL_STATUS_ERR_PARAM;
  goto error_param;
 }

 vsi = pf->vsi[vf->lan_vsi_idx];
 if (!vsi) {
  v_ret = VIRTCHNL_STATUS_ERR_PARAM;
  goto error_param;
 }

 memset(&stats, 0, sizeof(struct ice_eth_stats));
 ice_update_eth_stats(vsi);

 stats = vsi->eth_stats;

error_param:

 return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_GET_STATS, v_ret,
         (u8 *)&stats, sizeof(stats));
}
