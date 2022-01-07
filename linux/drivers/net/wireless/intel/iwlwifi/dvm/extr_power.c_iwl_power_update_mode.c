
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_priv {int dummy; } ;
struct iwl_powertable_cmd {int dummy; } ;


 int iwl_power_build_cmd (struct iwl_priv*,struct iwl_powertable_cmd*) ;
 int iwl_power_set_mode (struct iwl_priv*,struct iwl_powertable_cmd*,int) ;

int iwl_power_update_mode(struct iwl_priv *priv, bool force)
{
 struct iwl_powertable_cmd cmd;

 iwl_power_build_cmd(priv, &cmd);
 return iwl_power_set_mode(priv, &cmd, force);
}
