
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
struct qed_hwfn {TYPE_1__* p_dcbx_info; } ;
struct TYPE_5__ {size_t* ets_pri_tc_tbl; } ;
struct TYPE_6__ {TYPE_2__ params; int valid; } ;
struct qed_dcbx_get {TYPE_3__ operational; } ;
struct TYPE_4__ {struct qed_dcbx_get get; } ;


 int DP_ERR (struct qed_hwfn*,char*,size_t) ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*) ;
 size_t QED_DCBX_DEFAULT_TC ;
 size_t QED_MAX_PFC_PRIORITIES ;
 int QED_MSG_DCB ;

u8 qed_dcbx_get_priority_tc(struct qed_hwfn *p_hwfn, u8 pri)
{
 struct qed_dcbx_get *dcbx_info = &p_hwfn->p_dcbx_info->get;

 if (pri >= QED_MAX_PFC_PRIORITIES) {
  DP_ERR(p_hwfn, "Invalid priority %d\n", pri);
  return QED_DCBX_DEFAULT_TC;
 }

 if (!dcbx_info->operational.valid) {
  DP_VERBOSE(p_hwfn, QED_MSG_DCB,
      "Dcbx parameters not available\n");
  return QED_DCBX_DEFAULT_TC;
 }

 return dcbx_info->operational.params.ets_pri_tc_tbl[pri];
}
