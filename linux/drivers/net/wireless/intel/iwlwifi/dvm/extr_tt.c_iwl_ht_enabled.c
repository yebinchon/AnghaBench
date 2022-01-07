
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_tt_restriction {int is_ht; } ;
struct iwl_tt_mgmt {int state; struct iwl_tt_restriction* restriction; int advanced_tt; } ;
struct iwl_priv {struct iwl_tt_mgmt thermal_throttle; } ;



bool iwl_ht_enabled(struct iwl_priv *priv)
{
 struct iwl_tt_mgmt *tt = &priv->thermal_throttle;
 struct iwl_tt_restriction *restriction;

 if (!priv->thermal_throttle.advanced_tt)
  return 1;
 restriction = tt->restriction + tt->state;
 return restriction->is_ht;
}
