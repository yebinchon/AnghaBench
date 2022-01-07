
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct veth_priv {scalar_t__ _xdp_prog; int peer; } ;
struct net_device {int dummy; } ;


 struct veth_priv* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 struct net_device* rtnl_dereference (int ) ;
 int veth_disable_xdp (struct net_device*) ;

__attribute__((used)) static int veth_close(struct net_device *dev)
{
 struct veth_priv *priv = netdev_priv(dev);
 struct net_device *peer = rtnl_dereference(priv->peer);

 netif_carrier_off(dev);
 if (peer)
  netif_carrier_off(peer);

 if (priv->_xdp_prog)
  veth_disable_xdp(dev);

 return 0;
}
