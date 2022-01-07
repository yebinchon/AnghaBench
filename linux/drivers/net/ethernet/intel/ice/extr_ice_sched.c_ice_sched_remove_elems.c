
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_4__ {int node_teid; } ;
struct ice_sched_node {TYPE_1__ info; } ;
struct TYPE_6__ {int sq_last_status; } ;
struct ice_hw {TYPE_3__ adminq; } ;
struct TYPE_5__ {int num_elems; int parent_teid; } ;
struct ice_aqc_delete_elem {int * teid; TYPE_2__ hdr; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int GFP_KERNEL ;
 int ICE_DBG_SCHED ;
 int ICE_ERR_NO_MEMORY ;
 int cpu_to_le16 (int) ;
 int cpu_to_le32 (int ) ;
 int devm_kfree (int ,struct ice_aqc_delete_elem*) ;
 struct ice_aqc_delete_elem* devm_kzalloc (int ,int,int ) ;
 int ice_aq_delete_sched_elems (struct ice_hw*,int,struct ice_aqc_delete_elem*,int,int*,int *) ;
 int ice_debug (struct ice_hw*,int ,char*,int ) ;
 int ice_hw_to_dev (struct ice_hw*) ;

__attribute__((used)) static enum ice_status
ice_sched_remove_elems(struct ice_hw *hw, struct ice_sched_node *parent,
         u16 num_nodes, u32 *node_teids)
{
 struct ice_aqc_delete_elem *buf;
 u16 i, num_groups_removed = 0;
 enum ice_status status;
 u16 buf_size;

 buf_size = sizeof(*buf) + sizeof(u32) * (num_nodes - 1);
 buf = devm_kzalloc(ice_hw_to_dev(hw), buf_size, GFP_KERNEL);
 if (!buf)
  return ICE_ERR_NO_MEMORY;

 buf->hdr.parent_teid = parent->info.node_teid;
 buf->hdr.num_elems = cpu_to_le16(num_nodes);
 for (i = 0; i < num_nodes; i++)
  buf->teid[i] = cpu_to_le32(node_teids[i]);

 status = ice_aq_delete_sched_elems(hw, 1, buf, buf_size,
        &num_groups_removed, ((void*)0));
 if (status || num_groups_removed != 1)
  ice_debug(hw, ICE_DBG_SCHED, "remove node failed FW error %d\n",
     hw->adminq.sq_last_status);

 devm_kfree(ice_hw_to_dev(hw), buf);
 return status;
}
