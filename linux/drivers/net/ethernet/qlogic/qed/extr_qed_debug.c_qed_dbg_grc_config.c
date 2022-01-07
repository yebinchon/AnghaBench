
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
typedef enum dbg_status { ____Placeholder_dbg_status } dbg_status ;
typedef enum dbg_grc_params { ____Placeholder_dbg_grc_params } dbg_grc_params ;
struct TYPE_2__ {int crash_preset_val; int exclude_all_preset_val; scalar_t__ is_persistent; scalar_t__ is_preset; int max; int min; } ;


 int DBG_GRC_PARAM_CRASH ;
 int DBG_GRC_PARAM_EXCLUDE_ALL ;
 int DBG_STATUS_INVALID_ARGS ;
 int DBG_STATUS_OK ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int,int ) ;
 int MAX_DBG_GRC_PARAMS ;
 int QED_MSG_DEBUG ;
 int qed_dbg_dev_init (struct qed_hwfn*,struct qed_ptt*) ;
 int qed_dbg_grc_init_params (struct qed_hwfn*) ;
 int qed_grc_set_param (struct qed_hwfn*,int,int ) ;
 TYPE_1__* s_grc_param_defs ;

enum dbg_status qed_dbg_grc_config(struct qed_hwfn *p_hwfn,
       struct qed_ptt *p_ptt,
       enum dbg_grc_params grc_param, u32 val)
{
 enum dbg_status status;
 int i;

 DP_VERBOSE(p_hwfn, QED_MSG_DEBUG,
     "dbg_grc_config: paramId = %d, val = %d\n", grc_param, val);

 status = qed_dbg_dev_init(p_hwfn, p_ptt);
 if (status != DBG_STATUS_OK)
  return status;




 qed_dbg_grc_init_params(p_hwfn);

 if (grc_param >= MAX_DBG_GRC_PARAMS)
  return DBG_STATUS_INVALID_ARGS;
 if (val < s_grc_param_defs[grc_param].min ||
     val > s_grc_param_defs[grc_param].max)
  return DBG_STATUS_INVALID_ARGS;

 if (s_grc_param_defs[grc_param].is_preset) {





  if (!val)
   return DBG_STATUS_INVALID_ARGS;


  for (i = 0; i < MAX_DBG_GRC_PARAMS; i++) {
   u32 preset_val;


   if (s_grc_param_defs[i].is_persistent)
    continue;


   if (grc_param == DBG_GRC_PARAM_EXCLUDE_ALL)
    preset_val =
        s_grc_param_defs[i].exclude_all_preset_val;
   else if (grc_param == DBG_GRC_PARAM_CRASH)
    preset_val =
        s_grc_param_defs[i].crash_preset_val;
   else
    return DBG_STATUS_INVALID_ARGS;

   qed_grc_set_param(p_hwfn,
       (enum dbg_grc_params)i, preset_val);
  }
 } else {

  qed_grc_set_param(p_hwfn, grc_param, val);
 }

 return DBG_STATUS_OK;
}
