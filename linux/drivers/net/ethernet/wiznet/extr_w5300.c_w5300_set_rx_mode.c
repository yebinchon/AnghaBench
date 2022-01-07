
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w5300_priv {int promisc; } ;
struct net_device {int flags; } ;


 int IFF_PROMISC ;
 struct w5300_priv* netdev_priv (struct net_device*) ;
 int w5300_hw_start (struct w5300_priv*) ;

__attribute__((used)) static void w5300_set_rx_mode(struct net_device *ndev)
{
 struct w5300_priv *priv = netdev_priv(ndev);
 bool set_promisc = (ndev->flags & IFF_PROMISC) != 0;

 if (priv->promisc != set_promisc) {
  priv->promisc = set_promisc;
  w5300_hw_start(priv);
 }
}
