
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct vnet_port {int q_index; } ;
struct vnet {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;


 struct vnet_port* __tx_port_find (struct vnet*,struct sk_buff*) ;
 struct vnet* netdev_priv (struct net_device*) ;

__attribute__((used)) static u16 vnet_select_queue(struct net_device *dev, struct sk_buff *skb,
        struct net_device *sb_dev)
{
 struct vnet *vp = netdev_priv(dev);
 struct vnet_port *port = __tx_port_find(vp, skb);

 if (!port)
  return 0;

 return port->q_index;
}
