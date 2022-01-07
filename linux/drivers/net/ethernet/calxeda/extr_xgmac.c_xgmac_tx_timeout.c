
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgmac_priv {int tx_timeout_work; } ;
struct net_device {int dummy; } ;


 struct xgmac_priv* netdev_priv (struct net_device*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void xgmac_tx_timeout(struct net_device *dev)
{
 struct xgmac_priv *priv = netdev_priv(dev);
 schedule_work(&priv->tx_timeout_work);
}
