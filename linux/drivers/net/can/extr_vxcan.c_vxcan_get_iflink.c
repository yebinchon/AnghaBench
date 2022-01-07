
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxcan_priv {int peer; } ;
struct net_device {int ifindex; } ;


 struct vxcan_priv* netdev_priv (struct net_device const*) ;
 struct net_device* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int vxcan_get_iflink(const struct net_device *dev)
{
 struct vxcan_priv *priv = netdev_priv(dev);
 struct net_device *peer;
 int iflink;

 rcu_read_lock();
 peer = rcu_dereference(priv->peer);
 iflink = peer ? peer->ifindex : 0;
 rcu_read_unlock();

 return iflink;
}
