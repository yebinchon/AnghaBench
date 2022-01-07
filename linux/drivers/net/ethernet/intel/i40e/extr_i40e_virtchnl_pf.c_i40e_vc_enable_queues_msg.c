
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct virtchnl_queue_select {scalar_t__ rx_queues; scalar_t__ tx_queues; int vsi_id; } ;
struct i40e_vf {size_t lan_vsi_idx; int num_tc; int queues_enabled; TYPE_1__* ch; scalar_t__ adq_enabled; int vf_states; struct i40e_pf* pf; } ;
struct i40e_pf {int * vsi; } ;
typedef int i40e_status ;
struct TYPE_2__ {size_t vsi_idx; } ;


 int I40E_ERR_PARAM ;
 int I40E_ERR_TIMEOUT ;
 int I40E_VF_STATE_ACTIVE ;
 int VIRTCHNL_OP_ENABLE_QUEUES ;
 scalar_t__ i40e_ctrl_vf_rx_rings (int ,scalar_t__,int) ;
 scalar_t__ i40e_ctrl_vf_tx_rings (int ,scalar_t__,int) ;
 int i40e_vc_isvalid_vsi_id (struct i40e_vf*,int ) ;
 int i40e_vc_send_resp_to_vf (struct i40e_vf*,int ,int ) ;
 scalar_t__ i40e_vsi_start_rings (int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int i40e_vc_enable_queues_msg(struct i40e_vf *vf, u8 *msg)
{
 struct virtchnl_queue_select *vqs =
     (struct virtchnl_queue_select *)msg;
 struct i40e_pf *pf = vf->pf;
 i40e_status aq_ret = 0;
 int i;

 if (!test_bit(I40E_VF_STATE_ACTIVE, &vf->vf_states)) {
  aq_ret = I40E_ERR_PARAM;
  goto error_param;
 }

 if (!i40e_vc_isvalid_vsi_id(vf, vqs->vsi_id)) {
  aq_ret = I40E_ERR_PARAM;
  goto error_param;
 }

 if ((0 == vqs->rx_queues) && (0 == vqs->tx_queues)) {
  aq_ret = I40E_ERR_PARAM;
  goto error_param;
 }


 if (i40e_ctrl_vf_rx_rings(pf->vsi[vf->lan_vsi_idx], vqs->rx_queues,
      1)) {
  aq_ret = I40E_ERR_TIMEOUT;
  goto error_param;
 }
 if (i40e_ctrl_vf_tx_rings(pf->vsi[vf->lan_vsi_idx], vqs->tx_queues,
      1)) {
  aq_ret = I40E_ERR_TIMEOUT;
  goto error_param;
 }


 if (vf->adq_enabled) {

  for (i = 1; i < vf->num_tc; i++) {
   if (i40e_vsi_start_rings(pf->vsi[vf->ch[i].vsi_idx]))
    aq_ret = I40E_ERR_TIMEOUT;
  }
 }

 vf->queues_enabled = 1;

error_param:

 return i40e_vc_send_resp_to_vf(vf, VIRTCHNL_OP_ENABLE_QUEUES,
           aq_ret);
}
