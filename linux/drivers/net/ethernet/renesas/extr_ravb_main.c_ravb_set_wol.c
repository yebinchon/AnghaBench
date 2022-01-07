
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ravb_private {int wol_enabled; TYPE_1__* pdev; } ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; } ;
struct TYPE_2__ {int dev; } ;


 int EOPNOTSUPP ;
 int WAKE_MAGIC ;
 int device_set_wakeup_enable (int *,int) ;
 struct ravb_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ravb_set_wol(struct net_device *ndev, struct ethtool_wolinfo *wol)
{
 struct ravb_private *priv = netdev_priv(ndev);

 if (wol->wolopts & ~WAKE_MAGIC)
  return -EOPNOTSUPP;

 priv->wol_enabled = !!(wol->wolopts & WAKE_MAGIC);

 device_set_wakeup_enable(&priv->pdev->dev, priv->wol_enabled);

 return 0;
}
