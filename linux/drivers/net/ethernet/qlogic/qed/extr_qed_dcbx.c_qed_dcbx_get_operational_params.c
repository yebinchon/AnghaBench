
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct qed_hwfn {TYPE_2__* p_dcbx_info; } ;
struct qed_dcbx_results {int dummy; } ;
struct qed_dcbx_operational_params {int enabled; int valid; int ieee; int cee; int local; int err; int app_prio; int params; } ;
struct qed_dcbx_get {struct qed_dcbx_operational_params operational; } ;
struct TYPE_6__ {int flags; int app_pri_tbl; } ;
struct dcbx_features {TYPE_3__ app; int pfc; int ets; } ;
struct TYPE_4__ {struct dcbx_features features; int flags; } ;
struct TYPE_5__ {struct qed_dcbx_results results; TYPE_1__ operational; } ;


 int DCBX_APP_ERROR ;
 int DCBX_CONFIG_VERSION ;
 int DCBX_CONFIG_VERSION_CEE ;
 int DCBX_CONFIG_VERSION_DISABLED ;
 int DCBX_CONFIG_VERSION_IEEE ;
 int DCBX_CONFIG_VERSION_STATIC ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*,...) ;
 int QED_MFW_GET_FIELD (int ,int ) ;
 int QED_MSG_DCB ;
 int qed_dcbx_get_common_params (struct qed_hwfn*,TYPE_3__*,int ,int *,int ,int *,int) ;
 int qed_dcbx_get_priority_info (struct qed_hwfn*,int *,struct qed_dcbx_results*) ;

__attribute__((used)) static void
qed_dcbx_get_operational_params(struct qed_hwfn *p_hwfn,
    struct qed_dcbx_get *params)
{
 struct qed_dcbx_operational_params *p_operational;
 struct qed_dcbx_results *p_results;
 struct dcbx_features *p_feat;
 bool enabled, err;
 u32 flags;
 bool val;

 flags = p_hwfn->p_dcbx_info->operational.flags;




 p_operational = &params->operational;
 enabled = !!(QED_MFW_GET_FIELD(flags, DCBX_CONFIG_VERSION) !=
       DCBX_CONFIG_VERSION_DISABLED);
 if (!enabled) {
  p_operational->enabled = enabled;
  p_operational->valid = 0;
  DP_VERBOSE(p_hwfn, QED_MSG_DCB, "Dcbx is disabled\n");
  return;
 }

 p_feat = &p_hwfn->p_dcbx_info->operational.features;
 p_results = &p_hwfn->p_dcbx_info->results;

 val = !!(QED_MFW_GET_FIELD(flags, DCBX_CONFIG_VERSION) ==
   DCBX_CONFIG_VERSION_IEEE);
 p_operational->ieee = val;
 val = !!(QED_MFW_GET_FIELD(flags, DCBX_CONFIG_VERSION) ==
   DCBX_CONFIG_VERSION_CEE);
 p_operational->cee = val;

 val = !!(QED_MFW_GET_FIELD(flags, DCBX_CONFIG_VERSION) ==
   DCBX_CONFIG_VERSION_STATIC);
 p_operational->local = val;

 DP_VERBOSE(p_hwfn, QED_MSG_DCB,
     "Version support: ieee %d, cee %d, static %d\n",
     p_operational->ieee, p_operational->cee,
     p_operational->local);

 qed_dcbx_get_common_params(p_hwfn, &p_feat->app,
       p_feat->app.app_pri_tbl, &p_feat->ets,
       p_feat->pfc, &params->operational.params,
       p_operational->ieee);
 qed_dcbx_get_priority_info(p_hwfn, &p_operational->app_prio, p_results);
 err = QED_MFW_GET_FIELD(p_feat->app.flags, DCBX_APP_ERROR);
 p_operational->err = err;
 p_operational->enabled = enabled;
 p_operational->valid = 1;
}
