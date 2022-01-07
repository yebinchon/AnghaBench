
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {scalar_t__* max_lanq; struct ice_sched_node** vsi_node; } ;
struct ice_vsi_ctx {TYPE_1__ sched; } ;
struct TYPE_4__ {int node_teid; } ;
struct ice_sched_node {int in_use; TYPE_2__ info; } ;
struct ice_port_info {struct ice_hw* hw; } ;
struct ice_hw {int dummy; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int ICE_DBG_SCHED ;
 int ICE_ERR_CFG ;
 int ICE_ERR_PARAM ;
 int ice_debug (struct ice_hw*,int ,char*,int ) ;
 struct ice_vsi_ctx* ice_get_vsi_ctx (struct ice_hw*,int ) ;
 int ice_sched_add_vsi_to_topo (struct ice_port_info*,int ,size_t) ;
 struct ice_sched_node* ice_sched_get_tc_node (struct ice_port_info*,size_t) ;
 struct ice_sched_node* ice_sched_get_vsi_node (struct ice_hw*,struct ice_sched_node*,int ) ;
 int ice_sched_suspend_resume_elems (struct ice_hw*,int,int *,int) ;
 int ice_sched_update_vsi_child_nodes (struct ice_port_info*,int ,size_t,int ,size_t) ;
 int le32_to_cpu (int ) ;

enum ice_status
ice_sched_cfg_vsi(struct ice_port_info *pi, u16 vsi_handle, u8 tc, u16 maxqs,
    u8 owner, bool enable)
{
 struct ice_sched_node *vsi_node, *tc_node;
 struct ice_vsi_ctx *vsi_ctx;
 enum ice_status status = 0;
 struct ice_hw *hw = pi->hw;

 ice_debug(pi->hw, ICE_DBG_SCHED, "add/config VSI %d\n", vsi_handle);
 tc_node = ice_sched_get_tc_node(pi, tc);
 if (!tc_node)
  return ICE_ERR_PARAM;
 vsi_ctx = ice_get_vsi_ctx(hw, vsi_handle);
 if (!vsi_ctx)
  return ICE_ERR_PARAM;
 vsi_node = ice_sched_get_vsi_node(hw, tc_node, vsi_handle);


 if (!enable) {
  if (vsi_node && vsi_node->in_use) {
   u32 teid = le32_to_cpu(vsi_node->info.node_teid);

   status = ice_sched_suspend_resume_elems(hw, 1, &teid,
        1);
   if (!status)
    vsi_node->in_use = 0;
  }
  return status;
 }


 if (!vsi_node) {
  status = ice_sched_add_vsi_to_topo(pi, vsi_handle, tc);
  if (status)
   return status;

  vsi_node = ice_sched_get_vsi_node(hw, tc_node, vsi_handle);
  if (!vsi_node)
   return ICE_ERR_CFG;

  vsi_ctx->sched.vsi_node[tc] = vsi_node;
  vsi_node->in_use = 1;




  vsi_ctx->sched.max_lanq[tc] = 0;
 }


 status = ice_sched_update_vsi_child_nodes(pi, vsi_handle, tc, maxqs,
        owner);
 if (status)
  return status;


 if (!vsi_node->in_use) {
  u32 teid = le32_to_cpu(vsi_node->info.node_teid);

  status = ice_sched_suspend_resume_elems(hw, 1, &teid, 0);
  if (!status)
   vsi_node->in_use = 1;
 }

 return status;
}
