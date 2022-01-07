
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct ice_sq_cd {int dummy; } ;
struct TYPE_6__ {int node_teid; } ;
struct ice_sched_node {TYPE_1__ info; } ;
struct ice_q_ctx {int q_handle; } ;
struct ice_port_info {scalar_t__ port_state; int sched_lock; struct ice_hw* hw; } ;
struct TYPE_8__ {int sq_last_status; } ;
struct ice_hw {scalar_t__ num_tx_sched_layers; TYPE_3__ adminq; } ;
struct TYPE_10__ {int elem_type; } ;
struct ice_aqc_txsched_elem_data {TYPE_5__ data; int node_teid; int parent_teid; int member_0; } ;
struct ice_aqc_add_tx_qgrp {int num_txqs; TYPE_4__* txqs; int parent_teid; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;
struct TYPE_7__ {int valid_sections; } ;
struct TYPE_9__ {int q_teid; int txq_id; TYPE_2__ info; } ;


 int ICE_AQC_ELEM_TYPE_LEAF ;
 int ICE_AQC_ELEM_VALID_GENERIC ;
 int ICE_DBG_SCHED ;
 int ICE_ERR_CFG ;
 int ICE_ERR_MAX_LIMIT ;
 int ICE_ERR_PARAM ;
 int ICE_SCHED_NODE_OWNER_LAN ;
 scalar_t__ ICE_SCHED_PORT_STATE_READY ;
 int ice_aq_add_lan_txq (struct ice_hw*,int,struct ice_aqc_add_tx_qgrp*,int ,struct ice_sq_cd*) ;
 int ice_debug (struct ice_hw*,int ,char*,int ,...) ;
 struct ice_q_ctx* ice_get_lan_q_ctx (struct ice_hw*,int ,int,int ) ;
 int ice_is_vsi_valid (struct ice_hw*,int ) ;
 int ice_sched_add_node (struct ice_port_info*,scalar_t__,struct ice_aqc_txsched_elem_data*) ;
 struct ice_sched_node* ice_sched_get_free_qparent (struct ice_port_info*,int ,int,int ) ;
 int le16_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

enum ice_status
ice_ena_vsi_txq(struct ice_port_info *pi, u16 vsi_handle, u8 tc, u16 q_handle,
  u8 num_qgrps, struct ice_aqc_add_tx_qgrp *buf, u16 buf_size,
  struct ice_sq_cd *cd)
{
 struct ice_aqc_txsched_elem_data node = { 0 };
 struct ice_sched_node *parent;
 struct ice_q_ctx *q_ctx;
 enum ice_status status;
 struct ice_hw *hw;

 if (!pi || pi->port_state != ICE_SCHED_PORT_STATE_READY)
  return ICE_ERR_CFG;

 if (num_qgrps > 1 || buf->num_txqs > 1)
  return ICE_ERR_MAX_LIMIT;

 hw = pi->hw;

 if (!ice_is_vsi_valid(hw, vsi_handle))
  return ICE_ERR_PARAM;

 mutex_lock(&pi->sched_lock);

 q_ctx = ice_get_lan_q_ctx(hw, vsi_handle, tc, q_handle);
 if (!q_ctx) {
  ice_debug(hw, ICE_DBG_SCHED, "Enaq: invalid queue handle %d\n",
     q_handle);
  status = ICE_ERR_PARAM;
  goto ena_txq_exit;
 }


 parent = ice_sched_get_free_qparent(pi, vsi_handle, tc,
         ICE_SCHED_NODE_OWNER_LAN);
 if (!parent) {
  status = ICE_ERR_PARAM;
  goto ena_txq_exit;
 }

 buf->parent_teid = parent->info.node_teid;
 node.parent_teid = parent->info.node_teid;
 buf->txqs[0].info.valid_sections = ICE_AQC_ELEM_VALID_GENERIC;


 status = ice_aq_add_lan_txq(hw, num_qgrps, buf, buf_size, cd);
 if (status) {
  ice_debug(hw, ICE_DBG_SCHED, "enable queue %d failed %d\n",
     le16_to_cpu(buf->txqs[0].txq_id),
     hw->adminq.sq_last_status);
  goto ena_txq_exit;
 }

 node.node_teid = buf->txqs[0].q_teid;
 node.data.elem_type = ICE_AQC_ELEM_TYPE_LEAF;
 q_ctx->q_handle = q_handle;


 status = ice_sched_add_node(pi, hw->num_tx_sched_layers - 1, &node);

ena_txq_exit:
 mutex_unlock(&pi->sched_lock);
 return status;
}
