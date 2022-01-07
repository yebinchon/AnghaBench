
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct ice_hw {int dummy; } ;
struct ice_aqc_suspend_resume_elem {int * teid; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int GFP_KERNEL ;
 int ICE_DBG_SCHED ;
 int ICE_ERR_NO_MEMORY ;
 int cpu_to_le32 (int ) ;
 int devm_kfree (int ,struct ice_aqc_suspend_resume_elem*) ;
 struct ice_aqc_suspend_resume_elem* devm_kzalloc (int ,int,int ) ;
 int ice_aq_resume_sched_elems (struct ice_hw*,int,struct ice_aqc_suspend_resume_elem*,int,int*,int *) ;
 int ice_aq_suspend_sched_elems (struct ice_hw*,int,struct ice_aqc_suspend_resume_elem*,int,int*,int *) ;
 int ice_debug (struct ice_hw*,int ,char*) ;
 int ice_hw_to_dev (struct ice_hw*) ;

__attribute__((used)) static enum ice_status
ice_sched_suspend_resume_elems(struct ice_hw *hw, u8 num_nodes, u32 *node_teids,
          bool suspend)
{
 struct ice_aqc_suspend_resume_elem *buf;
 u16 i, buf_size, num_elem_ret = 0;
 enum ice_status status;

 buf_size = sizeof(*buf) * num_nodes;
 buf = devm_kzalloc(ice_hw_to_dev(hw), buf_size, GFP_KERNEL);
 if (!buf)
  return ICE_ERR_NO_MEMORY;

 for (i = 0; i < num_nodes; i++)
  buf->teid[i] = cpu_to_le32(node_teids[i]);

 if (suspend)
  status = ice_aq_suspend_sched_elems(hw, num_nodes, buf,
          buf_size, &num_elem_ret,
          ((void*)0));
 else
  status = ice_aq_resume_sched_elems(hw, num_nodes, buf,
         buf_size, &num_elem_ret,
         ((void*)0));
 if (status || num_elem_ret != num_nodes)
  ice_debug(hw, ICE_DBG_SCHED, "suspend/resume failed\n");

 devm_kfree(ice_hw_to_dev(hw), buf);
 return status;
}
