
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ice_sq_cd {int dummy; } ;
struct ice_hw {int dummy; } ;
struct ice_aqc_suspend_resume_elem {int dummy; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int ice_aqc_opc_resume_sched_elems ;
 int ice_aqc_send_sched_elem_cmd (struct ice_hw*,int ,int ,void*,int ,int *,struct ice_sq_cd*) ;

__attribute__((used)) static enum ice_status
ice_aq_resume_sched_elems(struct ice_hw *hw, u16 elems_req,
     struct ice_aqc_suspend_resume_elem *buf,
     u16 buf_size, u16 *elems_ret, struct ice_sq_cd *cd)
{
 return ice_aqc_send_sched_elem_cmd(hw, ice_aqc_opc_resume_sched_elems,
        elems_req, (void *)buf, buf_size,
        elems_ret, cd);
}
