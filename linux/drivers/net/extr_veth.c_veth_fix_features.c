
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct veth_priv {scalar_t__ _xdp_prog; int peer; } ;
struct net_device {int dummy; } ;
typedef int netdev_features_t ;


 int NETIF_F_GSO_SOFTWARE ;
 struct veth_priv* netdev_priv (struct net_device*) ;
 struct net_device* rtnl_dereference (int ) ;

__attribute__((used)) static netdev_features_t veth_fix_features(struct net_device *dev,
        netdev_features_t features)
{
 struct veth_priv *priv = netdev_priv(dev);
 struct net_device *peer;

 peer = rtnl_dereference(priv->peer);
 if (peer) {
  struct veth_priv *peer_priv = netdev_priv(peer);

  if (peer_priv->_xdp_prog)
   features &= ~NETIF_F_GSO_SOFTWARE;
 }

 return features;
}
