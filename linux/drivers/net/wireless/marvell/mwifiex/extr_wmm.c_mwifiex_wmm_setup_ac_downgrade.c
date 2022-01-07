
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* ac_down_graded_vals; } ;
struct mwifiex_private {TYPE_1__ wmm; int adapter; int wmm_enabled; } ;
typedef enum mwifiex_wmm_ac_e { ____Placeholder_mwifiex_wmm_ac_e } mwifiex_wmm_ac_e ;


 int INFO ;
 int WMM_AC_BK ;
 int WMM_AC_VO ;
 int mwifiex_dbg (int ,int ,char*,...) ;
 int mwifiex_wmm_eval_downgrade_ac (struct mwifiex_private*,int) ;

void
mwifiex_wmm_setup_ac_downgrade(struct mwifiex_private *priv)
{
 int ac_val;

 mwifiex_dbg(priv->adapter, INFO, "info: WMM: AC Priorities:\t"
      "BK(0), BE(1), VI(2), VO(3)\n");

 if (!priv->wmm_enabled) {

  for (ac_val = WMM_AC_BK; ac_val <= WMM_AC_VO; ac_val++)
   priv->wmm.ac_down_graded_vals[ac_val] =
      (enum mwifiex_wmm_ac_e) ac_val;
 } else {
  for (ac_val = WMM_AC_BK; ac_val <= WMM_AC_VO; ac_val++) {
   priv->wmm.ac_down_graded_vals[ac_val]
    = mwifiex_wmm_eval_downgrade_ac(priv,
      (enum mwifiex_wmm_ac_e) ac_val);
   mwifiex_dbg(priv->adapter, INFO,
        "info: WMM: AC PRIO %d maps to %d\n",
        ac_val,
        priv->wmm.ac_down_graded_vals[ac_val]);
  }
 }
}
