
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rc; } ;
union qm_mr_entry {TYPE_1__ ern; } ;
struct TYPE_4__ {int orp_zero; int fq_retired; int fq_tdrop; int late_window; int early_window; int err_cond; int wred; int cg_tdrop; } ;
struct dpaa_percpu_priv {TYPE_2__ ern_cnt; } ;





 int QM_MR_RC_MASK ;






__attribute__((used)) static void count_ern(struct dpaa_percpu_priv *percpu_priv,
        const union qm_mr_entry *msg)
{
 switch (msg->ern.rc & QM_MR_RC_MASK) {
 case 135:
  percpu_priv->ern_cnt.cg_tdrop++;
  break;
 case 128:
  percpu_priv->ern_cnt.wred++;
  break;
 case 134:
  percpu_priv->ern_cnt.err_cond++;
  break;
 case 132:
  percpu_priv->ern_cnt.early_window++;
  break;
 case 131:
  percpu_priv->ern_cnt.late_window++;
  break;
 case 133:
  percpu_priv->ern_cnt.fq_tdrop++;
  break;
 case 130:
  percpu_priv->ern_cnt.fq_retired++;
  break;
 case 129:
  percpu_priv->ern_cnt.orp_zero++;
  break;
 }
}
