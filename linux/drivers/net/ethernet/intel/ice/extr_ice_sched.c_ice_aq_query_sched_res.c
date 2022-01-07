
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ice_sq_cd {int dummy; } ;
struct ice_hw {int dummy; } ;
struct ice_aqc_query_txsched_res_resp {int dummy; } ;
struct ice_aq_desc {int dummy; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int ice_aq_send_cmd (struct ice_hw*,struct ice_aq_desc*,struct ice_aqc_query_txsched_res_resp*,int ,struct ice_sq_cd*) ;
 int ice_aqc_opc_query_sched_res ;
 int ice_fill_dflt_direct_cmd_desc (struct ice_aq_desc*,int ) ;

__attribute__((used)) static enum ice_status
ice_aq_query_sched_res(struct ice_hw *hw, u16 buf_size,
         struct ice_aqc_query_txsched_res_resp *buf,
         struct ice_sq_cd *cd)
{
 struct ice_aq_desc desc;

 ice_fill_dflt_direct_cmd_desc(&desc, ice_aqc_opc_query_sched_res);
 return ice_aq_send_cmd(hw, &desc, buf, buf_size, cd);
}
