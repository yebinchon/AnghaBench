
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct virtchnl_queue_select {scalar_t__ rx_queues; scalar_t__ tx_queues; int vsi_id; } ;
struct i40e_vf {int queues_enabled; size_t lan_vsi_idx; int vf_states; struct i40e_pf* pf; } ;
struct i40e_pf {int * vsi; } ;
typedef int i40e_status ;


 int I40E_ERR_PARAM ;
 int I40E_ERR_TIMEOUT ;
 scalar_t__ I40E_MAX_VF_QUEUES ;
 int I40E_VF_STATE_ACTIVE ;
 int VIRTCHNL_OP_DISABLE_QUEUES ;
 scalar_t__ i40e_ctrl_vf_rx_rings (int ,scalar_t__,int) ;
 scalar_t__ i40e_ctrl_vf_tx_rings (int ,scalar_t__,int) ;
 int i40e_vc_isvalid_vsi_id (struct i40e_vf*,int ) ;
 int i40e_vc_send_resp_to_vf (struct i40e_vf*,int ,int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int i40e_vc_disable_queues_msg(struct i40e_vf *vf, u8 *msg)
{
 struct virtchnl_queue_select *vqs =
     (struct virtchnl_queue_select *)msg;
 struct i40e_pf *pf = vf->pf;
 i40e_status aq_ret = 0;


 vf->queues_enabled = 0;

 if (!test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states)) {
  aq_ret = I40E_ERR_PARAM;
  goto error_param;
 }

 if (!i40e_vc_isvalid_vsi_id(vf, vqs->vsi_id)) {
  aq_ret = I40E_ERR_PARAM;
  goto error_param;
 }

 if ((vqs->rx_queues == 0 && vqs->tx_queues == 0) ||
     vqs->rx_queues > I40E_MAX_VF_QUEUES ||
     vqs->tx_queues > I40E_MAX_VF_QUEUES) {
  aq_ret = I40E_ERR_PARAM;
  goto error_param;
 }


 if (i40e_ctrl_vf_tx_rings(pf->vsi[vf->lan_vsi_idx], vqs->tx_queues,
      0)) {
  aq_ret = I40E_ERR_TIMEOUT;
  goto error_param;
 }
 if (i40e_ctrl_vf_rx_rings(pf->vsi[vf->lan_vsi_idx], vqs->rx_queues,
      0)) {
  aq_ret = I40E_ERR_TIMEOUT;
  goto error_param;
 }
error_param:

 return i40e_vc_send_resp_to_vf(vf, VIRTCHNL_OP_DISABLE_QUEUES,
           aq_ret);
}
