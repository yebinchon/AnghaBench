
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct ice_port_info {int * root; int sched_lock; int port_state; void* last_node_teid; int lport; struct ice_hw* hw; } ;
struct ice_hw {int sw_entry_point_layer; } ;
struct TYPE_5__ {int num_elems; } ;
struct ice_aqc_get_topo_elem {TYPE_3__* generic; TYPE_1__ hdr; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;
struct TYPE_6__ {scalar_t__ elem_type; } ;
struct TYPE_7__ {TYPE_2__ data; int node_teid; } ;


 int GFP_KERNEL ;
 scalar_t__ ICE_AQC_ELEM_TYPE_ENTRY_POINT ;
 scalar_t__ ICE_AQC_ELEM_TYPE_LEAF ;
 int ICE_AQC_TOPO_MAX_LEVEL_NUM ;
 int ICE_AQ_MAX_BUF_LEN ;
 int ICE_DBG_SCHED ;
 int ICE_ERR_NO_MEMORY ;
 int ICE_ERR_PARAM ;
 int ICE_SCHED_PORT_STATE_READY ;
 int ICE_TXSCHED_MAX_BRANCHES ;
 int devm_kfree (int ,struct ice_aqc_get_topo_elem*) ;
 struct ice_aqc_get_topo_elem* devm_kzalloc (int ,int ,int ) ;
 int ice_aq_get_dflt_topo (struct ice_hw*,int ,struct ice_aqc_get_topo_elem*,int ,int*,int *) ;
 int ice_debug (struct ice_hw*,int ,char*,int) ;
 int ice_free_sched_node (struct ice_port_info*,int *) ;
 int ice_hw_to_dev (struct ice_hw*) ;
 int ice_sched_add_node (struct ice_port_info*,int,TYPE_3__*) ;
 int ice_sched_add_root_node (struct ice_port_info*,TYPE_3__*) ;
 int ice_sched_rm_dflt_nodes (struct ice_port_info*) ;
 int le16_to_cpu (int ) ;
 void* le32_to_cpu (int ) ;
 int mutex_init (int *) ;

enum ice_status ice_sched_init_port(struct ice_port_info *pi)
{
 struct ice_aqc_get_topo_elem *buf;
 enum ice_status status;
 struct ice_hw *hw;
 u8 num_branches;
 u16 num_elems;
 u8 i, j;

 if (!pi)
  return ICE_ERR_PARAM;
 hw = pi->hw;


 buf = devm_kzalloc(ice_hw_to_dev(hw), ICE_AQ_MAX_BUF_LEN, GFP_KERNEL);
 if (!buf)
  return ICE_ERR_NO_MEMORY;


 status = ice_aq_get_dflt_topo(hw, pi->lport, buf, ICE_AQ_MAX_BUF_LEN,
          &num_branches, ((void*)0));
 if (status)
  goto err_init_port;


 if (num_branches < 1 || num_branches > ICE_TXSCHED_MAX_BRANCHES) {
  ice_debug(hw, ICE_DBG_SCHED, "num_branches unexpected %d\n",
     num_branches);
  status = ICE_ERR_PARAM;
  goto err_init_port;
 }


 num_elems = le16_to_cpu(buf[0].hdr.num_elems);


 if (num_elems < 1 || num_elems > ICE_AQC_TOPO_MAX_LEVEL_NUM) {
  ice_debug(hw, ICE_DBG_SCHED, "num_elems unexpected %d\n",
     num_elems);
  status = ICE_ERR_PARAM;
  goto err_init_port;
 }




 if (num_elems > 2 && buf[0].generic[num_elems - 1].data.elem_type ==
     ICE_AQC_ELEM_TYPE_LEAF)
  pi->last_node_teid =
   le32_to_cpu(buf[0].generic[num_elems - 2].node_teid);
 else
  pi->last_node_teid =
   le32_to_cpu(buf[0].generic[num_elems - 1].node_teid);


 status = ice_sched_add_root_node(pi, &buf[0].generic[0]);
 if (status)
  goto err_init_port;


 for (i = 0; i < num_branches; i++) {
  num_elems = le16_to_cpu(buf[i].hdr.num_elems);


  for (j = 1; j < num_elems; j++) {

   if (buf[0].generic[j].data.elem_type ==
       ICE_AQC_ELEM_TYPE_ENTRY_POINT)
    hw->sw_entry_point_layer = j;

   status = ice_sched_add_node(pi, j, &buf[i].generic[j]);
   if (status)
    goto err_init_port;
  }
 }


 if (pi->root)
  ice_sched_rm_dflt_nodes(pi);


 pi->port_state = ICE_SCHED_PORT_STATE_READY;
 mutex_init(&pi->sched_lock);

err_init_port:
 if (status && pi->root) {
  ice_free_sched_node(pi, pi->root);
  pi->root = ((void*)0);
 }

 devm_kfree(ice_hw_to_dev(hw), buf);
 return status;
}
