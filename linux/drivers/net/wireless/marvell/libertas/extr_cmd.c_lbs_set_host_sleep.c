
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct wol_config {int dummy; } ;
struct lbs_private {int is_host_sleep_activated; scalar_t__ psstate; int dev; int host_sleep_q; int wol_criteria; } ;
struct cmd_header {int dummy; } ;
typedef int cmd ;


 int CMD_802_11_HOST_SLEEP_ACTIVATE ;
 int EHS_REMOVE_WAKEUP ;
 int HZ ;
 scalar_t__ PS_STATE_FULL_POWER ;
 int __lbs_cmd (struct lbs_private*,int ,struct cmd_header*,int,int ,int ) ;
 int lbs_host_sleep_cfg (struct lbs_private*,int ,struct wol_config*) ;
 int lbs_ret_host_sleep_activate ;
 int memset (struct cmd_header*,int ,int) ;
 int netdev_err (int ,char*) ;
 int netdev_info (int ,char*,int) ;
 int wait_event_interruptible_timeout (int ,int,int) ;

int lbs_set_host_sleep(struct lbs_private *priv, int host_sleep)
{
 struct cmd_header cmd;
 int ret = 0;
 uint32_t criteria = EHS_REMOVE_WAKEUP;

 if (host_sleep) {
  if (priv->is_host_sleep_activated != 1) {
   memset(&cmd, 0, sizeof(cmd));
   ret = lbs_host_sleep_cfg(priv, priv->wol_criteria,
     (struct wol_config *)((void*)0));
   if (ret) {
    netdev_info(priv->dev,
         "Host sleep configuration failed: %d\n",
         ret);
    return ret;
   }
   if (priv->psstate == PS_STATE_FULL_POWER) {
    ret = __lbs_cmd(priv,
      CMD_802_11_HOST_SLEEP_ACTIVATE,
      &cmd,
      sizeof(cmd),
      lbs_ret_host_sleep_activate, 0);
    if (ret)
     netdev_info(priv->dev,
          "HOST_SLEEP_ACTIVATE failed: %d\n",
          ret);
   }

   if (!wait_event_interruptible_timeout(
      priv->host_sleep_q,
      priv->is_host_sleep_activated,
      (10 * HZ))) {
    netdev_err(priv->dev,
        "host_sleep_q: timer expired\n");
    ret = -1;
   }
  } else {
   netdev_err(priv->dev, "host sleep: already enabled\n");
  }
 } else {
  if (priv->is_host_sleep_activated)
   ret = lbs_host_sleep_cfg(priv, criteria,
     (struct wol_config *)((void*)0));
 }

 return ret;
}
