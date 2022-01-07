
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {struct lbs_private* ml_priv; } ;
struct lbs_private {scalar_t__ connect_status; int dev; scalar_t__ scan_req; int scan_work; int driver_lock; } ;


 scalar_t__ LBS_CONNECTED ;
 int WLAN_REASON_DEAUTH_LEAVING ;
 int cancel_delayed_work_sync (int *) ;
 int lbs_disconnect (struct lbs_private*,int ) ;
 int lbs_iface_active (struct lbs_private*) ;
 int lbs_scan_done (struct lbs_private*) ;
 int lbs_stop_iface (struct lbs_private*) ;
 int lbs_update_mcast (struct lbs_private*) ;
 int netif_carrier_off (int ) ;
 int netif_stop_queue (struct net_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int lbs_eth_stop(struct net_device *dev)
{
 struct lbs_private *priv = dev->ml_priv;

 if (priv->connect_status == LBS_CONNECTED)
  lbs_disconnect(priv, WLAN_REASON_DEAUTH_LEAVING);

 spin_lock_irq(&priv->driver_lock);
 netif_stop_queue(dev);
 spin_unlock_irq(&priv->driver_lock);

 lbs_update_mcast(priv);
 cancel_delayed_work_sync(&priv->scan_work);
 if (priv->scan_req)
  lbs_scan_done(priv);

 netif_carrier_off(priv->dev);

 if (!lbs_iface_active(priv))
  lbs_stop_iface(priv);

 return 0;
}
