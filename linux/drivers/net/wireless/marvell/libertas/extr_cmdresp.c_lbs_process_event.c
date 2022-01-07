
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lbs_private {int dev; int needtowakeup; int psstate; int ds_awake_q; int wakeup_dev_required; int is_deep_sleep; int (* reset_deep_sleep_wakeup ) (struct lbs_private*) ;int host_sleep_q; int is_host_sleep_activated; int cmdpendingq; } ;
struct cmd_header {int dummy; } ;
typedef int cmd ;


 int CMD_802_11_WAKEUP_CONFIRM ;
 int PS_MODE_ACTION_EXIT_PS ;
 int PS_STATE_AWAKE ;
 int PS_STATE_FULL_POWER ;
 int PS_STATE_PRE_SLEEP ;
 int lbs_cmd_async (struct lbs_private*,int ,struct cmd_header*,int) ;
 int lbs_deb_cmd (char*) ;
 int lbs_mac_event_disconnected (struct lbs_private*,int) ;
 int lbs_ps_confirm_sleep (struct lbs_private*) ;
 int lbs_send_mic_failureevent (struct lbs_private*,int) ;
 int lbs_set_ps_mode (struct lbs_private*,int ,int) ;
 int list_empty (int *) ;
 int netdev_alert (int ,char*,...) ;
 int netdev_info (int ,char*) ;
 int stub1 (struct lbs_private*) ;
 int stub2 (struct lbs_private*) ;
 int wake_up_interruptible (int *) ;

int lbs_process_event(struct lbs_private *priv, u32 event)
{
 int ret = 0;
 struct cmd_header cmd;

 switch (event) {
 case 139:
  lbs_deb_cmd("EVENT: link sensed\n");
  break;

 case 145:
  lbs_deb_cmd("EVENT: deauthenticated\n");
  lbs_mac_event_disconnected(priv, 0);
  break;

 case 143:
  lbs_deb_cmd("EVENT: disassociated\n");
  lbs_mac_event_disconnected(priv, 0);
  break;

 case 140:
  lbs_deb_cmd("EVENT: link lost\n");
  lbs_mac_event_disconnected(priv, 1);
  break;

 case 132:
  lbs_deb_cmd("EVENT: ps sleep\n");


  if (priv->psstate == PS_STATE_FULL_POWER) {
   lbs_deb_cmd(
          "EVENT: in FULL POWER mode, ignoring PS_SLEEP\n");
   break;
  }
  if (!list_empty(&priv->cmdpendingq)) {
   lbs_deb_cmd("EVENT: commands in queue, do not sleep\n");
   break;
  }
  priv->psstate = PS_STATE_PRE_SLEEP;

  lbs_ps_confirm_sleep(priv);

  break;

 case 142:
  lbs_deb_cmd("EVENT: host awake\n");
  if (priv->reset_deep_sleep_wakeup)
   priv->reset_deep_sleep_wakeup(priv);
  priv->is_deep_sleep = 0;
  lbs_cmd_async(priv, CMD_802_11_WAKEUP_CONFIRM, &cmd,
    sizeof(cmd));
  priv->is_host_sleep_activated = 0;
  wake_up_interruptible(&priv->host_sleep_q);
  break;

 case 144:
  if (priv->reset_deep_sleep_wakeup)
   priv->reset_deep_sleep_wakeup(priv);
  lbs_deb_cmd("EVENT: ds awake\n");
  priv->is_deep_sleep = 0;
  priv->wakeup_dev_required = 0;
  wake_up_interruptible(&priv->ds_awake_q);
  break;

 case 133:
  lbs_deb_cmd("EVENT: ps awake\n");

  if (priv->psstate == PS_STATE_FULL_POWER) {
   lbs_deb_cmd(
          "EVENT: In FULL POWER mode - ignore PS AWAKE\n");
   break;
  }

  priv->psstate = PS_STATE_AWAKE;

  if (priv->needtowakeup) {






   lbs_deb_cmd("waking up ...\n");
   lbs_set_ps_mode(priv, PS_MODE_ACTION_EXIT_PS, 0);
  }
  break;

 case 134:
  lbs_deb_cmd("EVENT: UNICAST MIC ERROR\n");
  lbs_send_mic_failureevent(priv, event);
  break;

 case 135:
  lbs_deb_cmd("EVENT: MULTICAST MIC ERROR\n");
  lbs_send_mic_failureevent(priv, event);
  break;

 case 136:
  lbs_deb_cmd("EVENT: MIB CHANGED\n");
  break;
 case 141:
  lbs_deb_cmd("EVENT: INIT DONE\n");
  break;
 case 146:
  lbs_deb_cmd("EVENT: ADHOC beacon lost\n");
  break;
 case 130:
  netdev_alert(priv->dev, "EVENT: rssi low\n");
  break;
 case 128:
  netdev_alert(priv->dev, "EVENT: snr low\n");
  break;
 case 138:
  netdev_alert(priv->dev, "EVENT: max fail\n");
  break;
 case 131:
  netdev_alert(priv->dev, "EVENT: rssi high\n");
  break;
 case 129:
  netdev_alert(priv->dev, "EVENT: snr high\n");
  break;

 case 137:

  netdev_info(priv->dev, "EVENT: MESH_AUTO_STARTED (ignoring)\n");
  break;

 default:
  netdev_alert(priv->dev, "EVENT: unknown event id %d\n", event);
  break;
 }

 return ret;
}
