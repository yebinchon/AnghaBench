
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct virtchnl_queue_select {int vsi_id; } ;
struct i40e_eth_stats {int dummy; } ;
struct i40e_vsi {struct i40e_eth_stats eth_stats; } ;
struct i40e_vf {size_t lan_vsi_idx; int vf_states; struct i40e_pf* pf; } ;
struct i40e_pf {struct i40e_vsi** vsi; } ;
typedef int stats ;
typedef int i40e_status ;


 int I40E_ERR_PARAM ;
 int I40E_VF_STATE_ACTIVE ;
 int VIRTCHNL_OP_GET_STATS ;
 int i40e_update_eth_stats (struct i40e_vsi*) ;
 int i40e_vc_isvalid_vsi_id (struct i40e_vf*,int ) ;
 int i40e_vc_send_msg_to_vf (struct i40e_vf*,int ,int ,int *,int) ;
 int memset (struct i40e_eth_stats*,int ,int) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int i40e_vc_get_stats_msg(struct i40e_vf *vf, u8 *msg)
{
 struct virtchnl_queue_select *vqs =
     (struct virtchnl_queue_select *)msg;
 struct i40e_pf *pf = vf->pf;
 struct i40e_eth_stats stats;
 i40e_status aq_ret = 0;
 struct i40e_vsi *vsi;

 memset(&stats, 0, sizeof(struct i40e_eth_stats));

 if (!test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states)) {
  aq_ret = I40E_ERR_PARAM;
  goto error_param;
 }

 if (!i40e_vc_isvalid_vsi_id(vf, vqs->vsi_id)) {
  aq_ret = I40E_ERR_PARAM;
  goto error_param;
 }

 vsi = pf->vsi[vf->lan_vsi_idx];
 if (!vsi) {
  aq_ret = I40E_ERR_PARAM;
  goto error_param;
 }
 i40e_update_eth_stats(vsi);
 stats = vsi->eth_stats;

error_param:

 return i40e_vc_send_msg_to_vf(vf, VIRTCHNL_OP_GET_STATS, aq_ret,
          (u8 *)&stats, sizeof(stats));
}
