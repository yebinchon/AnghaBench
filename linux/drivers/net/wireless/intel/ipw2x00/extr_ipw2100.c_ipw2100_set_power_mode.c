
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipw2100_priv {int power_mode; scalar_t__ port_type; scalar_t__ adhoc_power; } ;
struct host_command {int host_command_length; int* host_command_parameters; int host_command; int host_command_sequence; } ;


 scalar_t__ DFTL_IBSS_TX_POWER ;
 scalar_t__ IBSS ;
 int IPW_POWER_ENABLED ;
 int IPW_POWER_LEVEL (int) ;
 int IPW_POWER_MODE_CAM ;
 int POWER_MODE ;
 int TX_POWER_INDEX ;
 int ipw2100_hw_send_command (struct ipw2100_priv*,struct host_command*) ;

__attribute__((used)) static int ipw2100_set_power_mode(struct ipw2100_priv *priv, int power_level)
{
 struct host_command cmd = {
  .host_command = POWER_MODE,
  .host_command_sequence = 0,
  .host_command_length = 4
 };
 int err;

 cmd.host_command_parameters[0] = power_level;

 err = ipw2100_hw_send_command(priv, &cmd);
 if (err)
  return err;

 if (power_level == IPW_POWER_MODE_CAM)
  priv->power_mode = IPW_POWER_LEVEL(priv->power_mode);
 else
  priv->power_mode = IPW_POWER_ENABLED | power_level;
 return 0;
}
