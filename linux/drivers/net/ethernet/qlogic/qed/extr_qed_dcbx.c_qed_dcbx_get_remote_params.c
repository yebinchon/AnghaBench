
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct qed_hwfn {TYPE_3__* p_dcbx_info; } ;
struct TYPE_5__ {int valid; int params; } ;
struct qed_dcbx_get {TYPE_1__ remote; } ;
struct TYPE_8__ {int app_pri_tbl; } ;
struct dcbx_features {int pfc; int ets; TYPE_4__ app; } ;
struct TYPE_6__ {struct dcbx_features features; } ;
struct TYPE_7__ {TYPE_2__ remote; } ;


 int qed_dcbx_get_common_params (struct qed_hwfn*,TYPE_4__*,int ,int *,int ,int *,int) ;

__attribute__((used)) static void
qed_dcbx_get_remote_params(struct qed_hwfn *p_hwfn, struct qed_dcbx_get *params)
{
 struct dcbx_features *p_feat;

 p_feat = &p_hwfn->p_dcbx_info->remote.features;
 qed_dcbx_get_common_params(p_hwfn, &p_feat->app,
       p_feat->app.app_pri_tbl, &p_feat->ets,
       p_feat->pfc, &params->remote.params, 0);
 params->remote.valid = 1;
}
