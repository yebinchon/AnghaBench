
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct ice_sched_node {int in_use; size_t tx_sched_layer; int info; int num_children; struct ice_sched_node** children; struct ice_sched_node* parent; } ;
struct ice_port_info {int root; struct ice_hw* hw; } ;
struct ice_hw {scalar_t__* max_children; } ;
struct ice_aqc_txsched_elem_data {int node_teid; int parent_teid; } ;
struct ice_aqc_get_elem {int * generic; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int GFP_KERNEL ;
 int ICE_DBG_SCHED ;
 int ICE_ERR_NO_MEMORY ;
 int ICE_ERR_PARAM ;
 struct ice_sched_node** devm_kcalloc (int ,scalar_t__,int,int ) ;
 int devm_kfree (int ,struct ice_sched_node*) ;
 struct ice_sched_node* devm_kzalloc (int ,int,int ) ;
 int ice_debug (struct ice_hw*,int ,char*,int ) ;
 int ice_hw_to_dev (struct ice_hw*) ;
 struct ice_sched_node* ice_sched_find_node_by_teid (int ,int ) ;
 int ice_sched_query_elem (struct ice_hw*,int ,struct ice_aqc_get_elem*) ;
 int le32_to_cpu (int ) ;
 int memcpy (int *,int *,int) ;

enum ice_status
ice_sched_add_node(struct ice_port_info *pi, u8 layer,
     struct ice_aqc_txsched_elem_data *info)
{
 struct ice_sched_node *parent;
 struct ice_aqc_get_elem elem;
 struct ice_sched_node *node;
 enum ice_status status;
 struct ice_hw *hw;

 if (!pi)
  return ICE_ERR_PARAM;

 hw = pi->hw;


 parent = ice_sched_find_node_by_teid(pi->root,
          le32_to_cpu(info->parent_teid));
 if (!parent) {
  ice_debug(hw, ICE_DBG_SCHED,
     "Parent Node not found for parent_teid=0x%x\n",
     le32_to_cpu(info->parent_teid));
  return ICE_ERR_PARAM;
 }




 status = ice_sched_query_elem(hw, le32_to_cpu(info->node_teid), &elem);
 if (status)
  return status;

 node = devm_kzalloc(ice_hw_to_dev(hw), sizeof(*node), GFP_KERNEL);
 if (!node)
  return ICE_ERR_NO_MEMORY;
 if (hw->max_children[layer]) {

  node->children = devm_kcalloc(ice_hw_to_dev(hw),
           hw->max_children[layer],
           sizeof(*node), GFP_KERNEL);
  if (!node->children) {
   devm_kfree(ice_hw_to_dev(hw), node);
   return ICE_ERR_NO_MEMORY;
  }
 }

 node->in_use = 1;
 node->parent = parent;
 node->tx_sched_layer = layer;
 parent->children[parent->num_children++] = node;
 memcpy(&node->info, &elem.generic[0], sizeof(node->info));
 return 0;
}
