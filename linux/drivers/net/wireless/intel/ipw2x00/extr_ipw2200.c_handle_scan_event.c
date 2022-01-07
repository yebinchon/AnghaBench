
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_priv {int scan_event; scalar_t__ user_requested_scan; } ;


 int mod_delayed_work (int ,int *,int ) ;
 int msecs_to_jiffies (int) ;
 int round_jiffies_relative (int ) ;
 int schedule_delayed_work (int *,int ) ;
 int system_wq ;

__attribute__((used)) static void handle_scan_event(struct ipw_priv *priv)
{

 if (!priv->user_requested_scan) {
  schedule_delayed_work(&priv->scan_event,
          round_jiffies_relative(msecs_to_jiffies(4000)));
 } else {
  priv->user_requested_scan = 0;
  mod_delayed_work(system_wq, &priv->scan_event, 0);
 }
}
