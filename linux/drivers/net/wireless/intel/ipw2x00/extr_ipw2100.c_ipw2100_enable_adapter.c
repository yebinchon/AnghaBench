
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipw2100_priv {int status; int adapter_mutex; int hang_check; scalar_t__ stop_hang_check; TYPE_1__* net_dev; } ;
struct host_command {int host_command_length; int host_command_sequence; int host_command; } ;
struct TYPE_2__ {int name; } ;


 int HOST_COMPLETE ;
 int HZ ;
 int IPW_DEBUG_HC (char*) ;
 int IPW_DEBUG_INFO (char*,...) ;
 int IPW_HW_STATE_ENABLED ;
 int STATUS_ENABLED ;
 int ipw2100_hw_send_command (struct ipw2100_priv*,struct host_command*) ;
 int ipw2100_wait_for_card_state (struct ipw2100_priv*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ rf_kill_active (struct ipw2100_priv*) ;
 int schedule_delayed_work (int *,int) ;

__attribute__((used)) static int ipw2100_enable_adapter(struct ipw2100_priv *priv)
{
 struct host_command cmd = {
  .host_command = HOST_COMPLETE,
  .host_command_sequence = 0,
  .host_command_length = 0
 };
 int err = 0;

 IPW_DEBUG_HC("HOST_COMPLETE\n");

 if (priv->status & STATUS_ENABLED)
  return 0;

 mutex_lock(&priv->adapter_mutex);

 if (rf_kill_active(priv)) {
  IPW_DEBUG_HC("Command aborted due to RF kill active.\n");
  goto fail_up;
 }

 err = ipw2100_hw_send_command(priv, &cmd);
 if (err) {
  IPW_DEBUG_INFO("Failed to send HOST_COMPLETE command\n");
  goto fail_up;
 }

 err = ipw2100_wait_for_card_state(priv, IPW_HW_STATE_ENABLED);
 if (err) {
  IPW_DEBUG_INFO("%s: card not responding to init command.\n",
          priv->net_dev->name);
  goto fail_up;
 }

 if (priv->stop_hang_check) {
  priv->stop_hang_check = 0;
  schedule_delayed_work(&priv->hang_check, HZ / 2);
 }

      fail_up:
 mutex_unlock(&priv->adapter_mutex);
 return err;
}
