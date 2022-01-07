
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr {int sa_data; int sa_family; } ;
struct sk_buff {int dummy; } ;
struct net_device {int priv_flags; } ;
struct macvlan_port {TYPE_1__* dev; int perm_addr; int bc_queue; int bc_work; } ;
struct macvlan_dev {int dev; } ;
struct TYPE_4__ {struct macvlan_dev* src; } ;
struct TYPE_3__ {int addr_len; int type; int dev_addr; } ;


 int IFF_MACVLAN_PORT ;
 TYPE_2__* MACVLAN_SKB_CB (struct sk_buff*) ;
 struct sk_buff* __skb_dequeue (int *) ;
 int cancel_work_sync (int *) ;
 int dev_put (int ) ;
 int dev_set_mac_address (TYPE_1__*,struct sockaddr*,int *) ;
 int ether_addr_equal (int ,int ) ;
 int kfree (struct macvlan_port*) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ macvlan_passthru (struct macvlan_port*) ;
 struct macvlan_port* macvlan_port_get_rtnl (struct net_device*) ;
 int memcpy (int *,int ,int ) ;
 int netdev_rx_handler_unregister (struct net_device*) ;

__attribute__((used)) static void macvlan_port_destroy(struct net_device *dev)
{
 struct macvlan_port *port = macvlan_port_get_rtnl(dev);
 struct sk_buff *skb;

 dev->priv_flags &= ~IFF_MACVLAN_PORT;
 netdev_rx_handler_unregister(dev);




 cancel_work_sync(&port->bc_work);

 while ((skb = __skb_dequeue(&port->bc_queue))) {
  const struct macvlan_dev *src = MACVLAN_SKB_CB(skb)->src;

  if (src)
   dev_put(src->dev);

  kfree_skb(skb);
 }




 if (macvlan_passthru(port) &&
     !ether_addr_equal(port->dev->dev_addr, port->perm_addr)) {
  struct sockaddr sa;

  sa.sa_family = port->dev->type;
  memcpy(&sa.sa_data, port->perm_addr, port->dev->addr_len);
  dev_set_mac_address(port->dev, &sa, ((void*)0));
 }

 kfree(port);
}
