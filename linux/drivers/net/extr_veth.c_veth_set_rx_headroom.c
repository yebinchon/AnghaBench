
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct veth_priv {int requested_headroom; int peer; } ;
struct net_device {int needed_headroom; } ;


 int max (int,int) ;
 struct veth_priv* netdev_priv (struct net_device*) ;
 struct net_device* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void veth_set_rx_headroom(struct net_device *dev, int new_hr)
{
 struct veth_priv *peer_priv, *priv = netdev_priv(dev);
 struct net_device *peer;

 if (new_hr < 0)
  new_hr = 0;

 rcu_read_lock();
 peer = rcu_dereference(priv->peer);
 if (unlikely(!peer))
  goto out;

 peer_priv = netdev_priv(peer);
 priv->requested_headroom = new_hr;
 new_hr = max(priv->requested_headroom, peer_priv->requested_headroom);
 dev->needed_headroom = new_hr;
 peer->needed_headroom = new_hr;

out:
 rcu_read_unlock();
}
