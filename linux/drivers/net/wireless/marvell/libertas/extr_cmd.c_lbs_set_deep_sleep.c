
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbs_private {int is_deep_sleep; int (* enter_deep_sleep ) (struct lbs_private*) ;int (* exit_deep_sleep ) (struct lbs_private*) ;int dev; } ;


 int BUG_ON (int) ;
 int lbs_deb_cmd (char*) ;
 int lbs_wait_for_ds_awake (struct lbs_private*) ;
 int netdev_err (int ,char*) ;
 int netif_carrier_off (int ) ;
 int netif_stop_queue (int ) ;
 int stub1 (struct lbs_private*) ;
 int stub2 (struct lbs_private*) ;

int lbs_set_deep_sleep(struct lbs_private *priv, int deep_sleep)
{
 int ret = 0;

 if (deep_sleep) {
  if (priv->is_deep_sleep != 1) {
   lbs_deb_cmd("deep sleep: sleep\n");
   BUG_ON(!priv->enter_deep_sleep);
   ret = priv->enter_deep_sleep(priv);
   if (!ret) {
    netif_stop_queue(priv->dev);
    netif_carrier_off(priv->dev);
   }
  } else {
   netdev_err(priv->dev, "deep sleep: already enabled\n");
  }
 } else {
  if (priv->is_deep_sleep) {
   lbs_deb_cmd("deep sleep: wakeup\n");
   BUG_ON(!priv->exit_deep_sleep);
   ret = priv->exit_deep_sleep(priv);
   if (!ret) {
    ret = lbs_wait_for_ds_awake(priv);
    if (ret)
     netdev_err(priv->dev,
         "deep sleep: wakeup failed\n");
   }
  }
 }

 return ret;
}
