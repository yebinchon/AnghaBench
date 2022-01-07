
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ipw2100_priv {TYPE_1__* ieee; } ;
struct host_command {int host_command_length; int * host_command_parameters; int host_command_sequence; int host_command; } ;
struct TYPE_2__ {scalar_t__ iw_mode; } ;


 int BEACON_INTERVAL ;
 int IPW_DEBUG_INFO (char*) ;
 scalar_t__ IW_MODE_ADHOC ;
 int ipw2100_disable_adapter (struct ipw2100_priv*) ;
 int ipw2100_enable_adapter (struct ipw2100_priv*) ;
 int ipw2100_hw_send_command (struct ipw2100_priv*,struct host_command*) ;

__attribute__((used)) static int ipw2100_set_ibss_beacon_interval(struct ipw2100_priv *priv,
         u32 interval, int batch_mode)
{
 struct host_command cmd = {
  .host_command = BEACON_INTERVAL,
  .host_command_sequence = 0,
  .host_command_length = 4
 };
 int err;

 cmd.host_command_parameters[0] = interval;

 IPW_DEBUG_INFO("enter\n");

 if (priv->ieee->iw_mode == IW_MODE_ADHOC) {
  if (!batch_mode) {
   err = ipw2100_disable_adapter(priv);
   if (err)
    return err;
  }

  ipw2100_hw_send_command(priv, &cmd);

  if (!batch_mode) {
   err = ipw2100_enable_adapter(priv);
   if (err)
    return err;
  }
 }

 IPW_DEBUG_INFO("exit\n");

 return 0;
}
