
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iwl_tt_mgmt {int tt_power_mode; } ;
struct iwl_priv {struct iwl_tt_mgmt thermal_throttle; } ;



u8 iwl_tt_current_power_mode(struct iwl_priv *priv)
{
 struct iwl_tt_mgmt *tt = &priv->thermal_throttle;

 return tt->tt_power_mode;
}
