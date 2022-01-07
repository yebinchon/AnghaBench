
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_priv {int status; int up; int rf_kill; int down; int scan_event; int request_passive_scan; int request_direct_scan; int request_scan; } ;


 int HZ ;
 int IPW_DEBUG_RF_KILL (char*,...) ;
 int STATUS_RF_KILL_SW ;
 int cancel_delayed_work (int *) ;
 scalar_t__ rf_kill_active (struct ipw_priv*) ;
 int round_jiffies_relative (int) ;
 int schedule_delayed_work (int *,int ) ;
 int schedule_work (int *) ;

__attribute__((used)) static int ipw_radio_kill_sw(struct ipw_priv *priv, int disable_radio)
{
 if ((disable_radio ? 1 : 0) ==
     ((priv->status & STATUS_RF_KILL_SW) ? 1 : 0))
  return 0;

 IPW_DEBUG_RF_KILL("Manual SW RF Kill set to: RADIO  %s\n",
     disable_radio ? "OFF" : "ON");

 if (disable_radio) {
  priv->status |= STATUS_RF_KILL_SW;

  cancel_delayed_work(&priv->request_scan);
  cancel_delayed_work(&priv->request_direct_scan);
  cancel_delayed_work(&priv->request_passive_scan);
  cancel_delayed_work(&priv->scan_event);
  schedule_work(&priv->down);
 } else {
  priv->status &= ~STATUS_RF_KILL_SW;
  if (rf_kill_active(priv)) {
   IPW_DEBUG_RF_KILL("Can not turn radio back on - "
       "disabled by HW switch\n");

   cancel_delayed_work(&priv->rf_kill);
   schedule_delayed_work(&priv->rf_kill,
           round_jiffies_relative(2 * HZ));
  } else
   schedule_work(&priv->up);
 }

 return 1;
}
