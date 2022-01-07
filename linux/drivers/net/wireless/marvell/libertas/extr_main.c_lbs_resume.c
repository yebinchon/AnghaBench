
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbs_private {scalar_t__ setup_fw_on_resume; scalar_t__ dev; scalar_t__ deep_sleep_required; scalar_t__ mesh_dev; } ;


 int lbs_set_deep_sleep (struct lbs_private*,int) ;
 int lbs_set_host_sleep (struct lbs_private*,int ) ;
 int lbs_setup_firmware (struct lbs_private*) ;
 int netdev_err (scalar_t__,char*,int) ;
 int netif_device_attach (scalar_t__) ;

int lbs_resume(struct lbs_private *priv)
{
 int ret;

 ret = lbs_set_host_sleep(priv, 0);

 netif_device_attach(priv->dev);
 if (priv->mesh_dev)
  netif_device_attach(priv->mesh_dev);

 if (priv->deep_sleep_required) {
  priv->deep_sleep_required = 0;
  ret = lbs_set_deep_sleep(priv, 1);
  if (ret)
   netdev_err(priv->dev,
       "deep sleep activation failed: %d\n", ret);
 }

 if (priv->setup_fw_on_resume)
  ret = lbs_setup_firmware(priv);

 return ret;
}
