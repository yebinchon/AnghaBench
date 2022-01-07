
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct veth_priv {scalar_t__ _xdp_prog; int peer; } ;
struct net_device {int flags; } ;


 int ENOTCONN ;
 int IFF_UP ;
 struct veth_priv* netdev_priv (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 struct net_device* rtnl_dereference (int ) ;
 int veth_enable_xdp (struct net_device*) ;

__attribute__((used)) static int veth_open(struct net_device *dev)
{
 struct veth_priv *priv = netdev_priv(dev);
 struct net_device *peer = rtnl_dereference(priv->peer);
 int err;

 if (!peer)
  return -ENOTCONN;

 if (priv->_xdp_prog) {
  err = veth_enable_xdp(dev);
  if (err)
   return err;
 }

 if (peer->flags & IFF_UP) {
  netif_carrier_on(dev);
  netif_carrier_on(peer);
 }

 return 0;
}
