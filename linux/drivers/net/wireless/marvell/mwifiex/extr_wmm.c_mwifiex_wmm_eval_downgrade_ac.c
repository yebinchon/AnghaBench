
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mwifiex_wmm_ac_status {int flow_required; int disabled; } ;
struct TYPE_2__ {struct mwifiex_wmm_ac_status* ac_status; } ;
struct mwifiex_private {TYPE_1__ wmm; } ;
typedef enum mwifiex_wmm_ac_e { ____Placeholder_mwifiex_wmm_ac_e } mwifiex_wmm_ac_e ;


 int WMM_AC_BK ;

__attribute__((used)) static enum mwifiex_wmm_ac_e
mwifiex_wmm_eval_downgrade_ac(struct mwifiex_private *priv,
         enum mwifiex_wmm_ac_e eval_ac)
{
 int down_ac;
 enum mwifiex_wmm_ac_e ret_ac;
 struct mwifiex_wmm_ac_status *ac_status;

 ac_status = &priv->wmm.ac_status[eval_ac];

 if (!ac_status->disabled)

  return eval_ac;


 ret_ac = WMM_AC_BK;
 for (down_ac = WMM_AC_BK; down_ac < eval_ac; down_ac++) {
  ac_status = &priv->wmm.ac_status[down_ac];

  if (!ac_status->disabled && !ac_status->flow_required)


   ret_ac = (enum mwifiex_wmm_ac_e) down_ac;
 }

 return ret_ac;
}
