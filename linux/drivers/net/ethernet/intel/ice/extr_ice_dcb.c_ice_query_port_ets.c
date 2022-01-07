
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ice_sq_cd {int dummy; } ;
struct ice_port_info {int sched_lock; } ;
struct ice_aqc_port_ets_elem {int dummy; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int ice_aq_query_port_ets (struct ice_port_info*,struct ice_aqc_port_ets_elem*,int ,struct ice_sq_cd*) ;
 int ice_update_port_tc_tree_cfg (struct ice_port_info*,struct ice_aqc_port_ets_elem*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

enum ice_status
ice_query_port_ets(struct ice_port_info *pi,
     struct ice_aqc_port_ets_elem *buf, u16 buf_size,
     struct ice_sq_cd *cd)
{
 enum ice_status status;

 mutex_lock(&pi->sched_lock);
 status = ice_aq_query_port_ets(pi, buf, buf_size, cd);
 if (!status)
  status = ice_update_port_tc_tree_cfg(pi, buf);
 mutex_unlock(&pi->sched_lock);
 return status;
}
