
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
typedef size_t u16 ;
struct ice_sq_cd {int dummy; } ;
struct TYPE_2__ {int parent_teid; } ;
struct ice_sched_node {TYPE_1__ info; } ;
struct ice_q_ctx {size_t q_handle; } ;
struct ice_port_info {scalar_t__ port_state; int sched_lock; int hw; int root; } ;
struct ice_aqc_dis_txq_item {int num_qs; int * q_id; int parent_teid; } ;
typedef int qg_list ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;
typedef enum ice_disq_rst_src { ____Placeholder_ice_disq_rst_src } ice_disq_rst_src ;


 int ICE_DBG_SCHED ;
 int ICE_ERR_CFG ;
 int ICE_ERR_DOES_NOT_EXIST ;
 size_t ICE_INVAL_Q_HANDLE ;
 scalar_t__ ICE_SCHED_PORT_STATE_READY ;
 int cpu_to_le16 (size_t) ;
 int ice_aq_dis_lan_txq (int ,int,struct ice_aqc_dis_txq_item*,int,int,size_t,struct ice_sq_cd*) ;
 int ice_debug (int ,int ,char*,size_t,...) ;
 int ice_free_sched_node (struct ice_port_info*,struct ice_sched_node*) ;
 struct ice_q_ctx* ice_get_lan_q_ctx (int ,size_t,size_t,size_t) ;
 struct ice_sched_node* ice_sched_find_node_by_teid (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

enum ice_status
ice_dis_vsi_txq(struct ice_port_info *pi, u16 vsi_handle, u8 tc, u8 num_queues,
  u16 *q_handles, u16 *q_ids, u32 *q_teids,
  enum ice_disq_rst_src rst_src, u16 vmvf_num,
  struct ice_sq_cd *cd)
{
 enum ice_status status = ICE_ERR_DOES_NOT_EXIST;
 struct ice_aqc_dis_txq_item qg_list;
 struct ice_q_ctx *q_ctx;
 u16 i;

 if (!pi || pi->port_state != ICE_SCHED_PORT_STATE_READY)
  return ICE_ERR_CFG;

 if (!num_queues) {




  if (rst_src)
   return ice_aq_dis_lan_txq(pi->hw, 0, ((void*)0), 0, rst_src,
        vmvf_num, ((void*)0));
  return ICE_ERR_CFG;
 }

 mutex_lock(&pi->sched_lock);

 for (i = 0; i < num_queues; i++) {
  struct ice_sched_node *node;

  node = ice_sched_find_node_by_teid(pi->root, q_teids[i]);
  if (!node)
   continue;
  q_ctx = ice_get_lan_q_ctx(pi->hw, vsi_handle, tc, q_handles[i]);
  if (!q_ctx) {
   ice_debug(pi->hw, ICE_DBG_SCHED, "invalid queue handle%d\n",
      q_handles[i]);
   continue;
  }
  if (q_ctx->q_handle != q_handles[i]) {
   ice_debug(pi->hw, ICE_DBG_SCHED, "Err:handles %d %d\n",
      q_ctx->q_handle, q_handles[i]);
   continue;
  }
  qg_list.parent_teid = node->info.parent_teid;
  qg_list.num_qs = 1;
  qg_list.q_id[0] = cpu_to_le16(q_ids[i]);
  status = ice_aq_dis_lan_txq(pi->hw, 1, &qg_list,
         sizeof(qg_list), rst_src, vmvf_num,
         cd);

  if (status)
   break;
  ice_free_sched_node(pi, node);
  q_ctx->q_handle = ICE_INVAL_Q_HANDLE;
 }
 mutex_unlock(&pi->sched_lock);
 return status;
}
