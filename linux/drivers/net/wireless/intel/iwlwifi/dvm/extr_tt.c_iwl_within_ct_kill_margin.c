
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int advanced_tt; } ;
struct iwl_priv {scalar_t__ temperature; TYPE_1__ thermal_throttle; } ;
typedef scalar_t__ s32 ;


 scalar_t__ CT_KILL_THRESHOLD ;
 scalar_t__ CT_KILL_THRESHOLD_LEGACY ;
 scalar_t__ IWL_TT_CT_KILL_MARGIN ;

__attribute__((used)) static bool iwl_within_ct_kill_margin(struct iwl_priv *priv)
{
 s32 temp = priv->temperature;
 bool within_margin = 0;

 if (!priv->thermal_throttle.advanced_tt)
  within_margin = ((temp + IWL_TT_CT_KILL_MARGIN) >=
    CT_KILL_THRESHOLD_LEGACY) ? 1 : 0;
 else
  within_margin = ((temp + IWL_TT_CT_KILL_MARGIN) >=
    CT_KILL_THRESHOLD) ? 1 : 0;
 return within_margin;
}
