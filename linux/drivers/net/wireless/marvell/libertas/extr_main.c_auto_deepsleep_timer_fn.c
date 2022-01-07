
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct lbs_private {scalar_t__ connect_status; int auto_deep_sleep_timeout; int auto_deepsleep_timer; int wakeup_dev_required; scalar_t__ is_auto_deep_sleep_enabled; scalar_t__ is_activity_detected; } ;
struct cmd_header {int size; } ;
typedef int cmd ;


 int CMD_802_11_DEEP_SLEEP ;
 int HZ ;
 scalar_t__ LBS_CONNECTED ;
 int auto_deepsleep_timer ;
 int cpu_to_le16 (int) ;
 struct lbs_private* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int lbs_cmd_async (struct lbs_private*,int ,struct cmd_header*,int) ;
 int lbs_deb_main (char*) ;
 int memset (struct cmd_header*,int ,int) ;
 int mod_timer (int *,scalar_t__) ;
 struct lbs_private* priv ;

__attribute__((used)) static void auto_deepsleep_timer_fn(struct timer_list *t)
{
 struct lbs_private *priv = from_timer(priv, t, auto_deepsleep_timer);

 if (priv->is_activity_detected) {
  priv->is_activity_detected = 0;
 } else {
  if (priv->is_auto_deep_sleep_enabled &&
      (!priv->wakeup_dev_required) &&
      (priv->connect_status != LBS_CONNECTED)) {
   struct cmd_header cmd;

   lbs_deb_main("Entering auto deep sleep mode...\n");
   memset(&cmd, 0, sizeof(cmd));
   cmd.size = cpu_to_le16(sizeof(cmd));
   lbs_cmd_async(priv, CMD_802_11_DEEP_SLEEP, &cmd,
     sizeof(cmd));
  }
 }
 mod_timer(&priv->auto_deepsleep_timer , jiffies +
    (priv->auto_deep_sleep_timeout * HZ)/1000);
}
