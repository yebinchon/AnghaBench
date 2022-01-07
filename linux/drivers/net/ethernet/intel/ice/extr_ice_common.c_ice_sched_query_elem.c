
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct ice_hw {int dummy; } ;
struct ice_aqc_get_elem {TYPE_1__* generic; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;
struct TYPE_2__ {int node_teid; } ;


 int ICE_DBG_SCHED ;
 int cpu_to_le32 (int ) ;
 int ice_aq_query_sched_elems (struct ice_hw*,int,struct ice_aqc_get_elem*,int,int*,int *) ;
 int ice_debug (struct ice_hw*,int ,char*) ;
 int memset (struct ice_aqc_get_elem*,int ,int) ;

enum ice_status
ice_sched_query_elem(struct ice_hw *hw, u32 node_teid,
       struct ice_aqc_get_elem *buf)
{
 u16 buf_size, num_elem_ret = 0;
 enum ice_status status;

 buf_size = sizeof(*buf);
 memset(buf, 0, buf_size);
 buf->generic[0].node_teid = cpu_to_le32(node_teid);
 status = ice_aq_query_sched_elems(hw, 1, buf, buf_size, &num_elem_ret,
       ((void*)0));
 if (status || num_elem_ret != 1)
  ice_debug(hw, ICE_DBG_SCHED, "query element failed\n");
 return status;
}
