
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxcan_priv {int peer; } ;
typedef struct net_device const net_device ;
struct net {int dummy; } ;


 struct net* dev_net (struct net_device const*) ;
 struct vxcan_priv* netdev_priv (struct net_device const*) ;
 struct net_device const* rtnl_dereference (int ) ;

__attribute__((used)) static struct net *vxcan_get_link_net(const struct net_device *dev)
{
 struct vxcan_priv *priv = netdev_priv(dev);
 struct net_device *peer = rtnl_dereference(priv->peer);

 return peer ? dev_net(peer) : dev_net(dev);
}
