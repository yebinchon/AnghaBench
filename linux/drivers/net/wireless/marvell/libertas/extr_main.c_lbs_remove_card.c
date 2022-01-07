
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct lbs_private {scalar_t__ psmode; scalar_t__ psstate; int surpriseremoved; int main_thread; int host_sleep_q; scalar_t__ is_host_sleep_activated; scalar_t__ is_host_sleep_configured; int ds_awake_q; scalar_t__ is_deep_sleep; int work_thread; scalar_t__ wiphy_registered; struct net_device* dev; } ;


 scalar_t__ LBS802_11POWERMODECAM ;
 scalar_t__ LBS802_11POWERMODEMAX_PSP ;
 int PS_MODE_ACTION_EXIT_PS ;
 scalar_t__ PS_STATE_FULL_POWER ;
 int destroy_workqueue (int ) ;
 int free_netdev (struct net_device*) ;
 int kthread_stop (int ) ;
 int lbs_cfg_free (struct lbs_private*) ;
 int lbs_deb_main (char*) ;
 int lbs_free_adapter (struct lbs_private*) ;
 int lbs_remove_mesh (struct lbs_private*) ;
 int lbs_scan_deinit (struct lbs_private*) ;
 int lbs_set_ps_mode (struct lbs_private*,int ,int) ;
 int lbs_wait_for_firmware_load (struct lbs_private*) ;
 int wake_up_interruptible (int *) ;

void lbs_remove_card(struct lbs_private *priv)
{
 struct net_device *dev = priv->dev;

 lbs_remove_mesh(priv);

 if (priv->wiphy_registered)
  lbs_scan_deinit(priv);

 lbs_wait_for_firmware_load(priv);




 lbs_deb_main("destroying worker thread\n");
 destroy_workqueue(priv->work_thread);
 lbs_deb_main("done destroying worker thread\n");

 if (priv->psmode == LBS802_11POWERMODEMAX_PSP) {
  priv->psmode = LBS802_11POWERMODECAM;




  if (priv->psstate != PS_STATE_FULL_POWER)
   lbs_set_ps_mode(priv, PS_MODE_ACTION_EXIT_PS, 1);
 }

 if (priv->is_deep_sleep) {
  priv->is_deep_sleep = 0;
  wake_up_interruptible(&priv->ds_awake_q);
 }

 priv->is_host_sleep_configured = 0;
 priv->is_host_sleep_activated = 0;
 wake_up_interruptible(&priv->host_sleep_q);


 priv->surpriseremoved = 1;
 kthread_stop(priv->main_thread);

 lbs_free_adapter(priv);
 lbs_cfg_free(priv);
 free_netdev(dev);
}
