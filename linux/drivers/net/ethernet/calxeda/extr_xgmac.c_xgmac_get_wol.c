
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgmac_priv {int wolopts; int device; } ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int supported; int wolopts; } ;


 int WAKE_MAGIC ;
 int WAKE_UCAST ;
 scalar_t__ device_can_wakeup (int ) ;
 struct xgmac_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void xgmac_get_wol(struct net_device *dev,
          struct ethtool_wolinfo *wol)
{
 struct xgmac_priv *priv = netdev_priv(dev);

 if (device_can_wakeup(priv->device)) {
  wol->supported = WAKE_MAGIC | WAKE_UCAST;
  wol->wolopts = priv->wolopts;
 }
}
