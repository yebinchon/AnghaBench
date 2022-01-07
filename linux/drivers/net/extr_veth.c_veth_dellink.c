
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct veth_priv {int peer; } ;
struct net_device {int dummy; } ;
struct list_head {int dummy; } ;


 int RCU_INIT_POINTER (int ,int *) ;
 struct veth_priv* netdev_priv (struct net_device*) ;
 struct net_device* rtnl_dereference (int ) ;
 int unregister_netdevice_queue (struct net_device*,struct list_head*) ;

__attribute__((used)) static void veth_dellink(struct net_device *dev, struct list_head *head)
{
 struct veth_priv *priv;
 struct net_device *peer;

 priv = netdev_priv(dev);
 peer = rtnl_dereference(priv->peer);





 RCU_INIT_POINTER(priv->peer, ((void*)0));
 unregister_netdevice_queue(dev, head);

 if (peer) {
  priv = netdev_priv(peer);
  RCU_INIT_POINTER(priv->peer, ((void*)0));
  unregister_netdevice_queue(peer, head);
 }
}
