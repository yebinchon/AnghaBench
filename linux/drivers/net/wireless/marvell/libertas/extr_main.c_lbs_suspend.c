
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbs_private {int deep_sleep_required; scalar_t__ mesh_dev; scalar_t__ dev; scalar_t__ is_deep_sleep; } ;


 int lbs_set_deep_sleep (struct lbs_private*,int ) ;
 int lbs_set_host_sleep (struct lbs_private*,int) ;
 int netdev_err (scalar_t__,char*,int) ;
 int netif_device_detach (scalar_t__) ;

int lbs_suspend(struct lbs_private *priv)
{
 int ret;

 if (priv->is_deep_sleep) {
  ret = lbs_set_deep_sleep(priv, 0);
  if (ret) {
   netdev_err(priv->dev,
       "deep sleep cancellation failed: %d\n", ret);
   return ret;
  }
  priv->deep_sleep_required = 1;
 }

 ret = lbs_set_host_sleep(priv, 1);

 netif_device_detach(priv->dev);
 if (priv->mesh_dev)
  netif_device_detach(priv->mesh_dev);

 return ret;
}
