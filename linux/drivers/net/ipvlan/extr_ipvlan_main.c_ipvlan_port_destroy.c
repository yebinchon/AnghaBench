
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ dev; } ;
struct net_device {int dummy; } ;
struct ipvl_port {scalar_t__ mode; int ida; int backlog; int wq; } ;


 scalar_t__ IPVLAN_MODE_L3S ;
 struct sk_buff* __skb_dequeue (int *) ;
 int cancel_work_sync (int *) ;
 int dev_put (scalar_t__) ;
 int ida_destroy (int *) ;
 int ipvlan_l3s_unregister (struct ipvl_port*) ;
 struct ipvl_port* ipvlan_port_get_rtnl (struct net_device*) ;
 int kfree (struct ipvl_port*) ;
 int kfree_skb (struct sk_buff*) ;
 int netdev_rx_handler_unregister (struct net_device*) ;

__attribute__((used)) static void ipvlan_port_destroy(struct net_device *dev)
{
 struct ipvl_port *port = ipvlan_port_get_rtnl(dev);
 struct sk_buff *skb;

 if (port->mode == IPVLAN_MODE_L3S)
  ipvlan_l3s_unregister(port);
 netdev_rx_handler_unregister(dev);
 cancel_work_sync(&port->wq);
 while ((skb = __skb_dequeue(&port->backlog)) != ((void*)0)) {
  if (skb->dev)
   dev_put(skb->dev);
  kfree_skb(skb);
 }
 ida_destroy(&port->ida);
 kfree(port);
}
