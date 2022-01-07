
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ type; int flags; int priv_flags; int dev_addr; } ;
struct macvlan_port {int bc_work; int bc_queue; int * vlan_source_hash; int * vlan_hash; int vlans; int perm_addr; struct net_device* dev; } ;


 scalar_t__ ARPHRD_ETHER ;
 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IFF_LOOPBACK ;
 int IFF_MACVLAN_PORT ;
 int INIT_HLIST_HEAD (int *) ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 unsigned int MACVLAN_HASH_SIZE ;
 int ether_addr_copy (int ,int ) ;
 int kfree (struct macvlan_port*) ;
 struct macvlan_port* kzalloc (int,int ) ;
 int macvlan_handle_frame ;
 int macvlan_process_broadcast ;
 scalar_t__ netdev_is_rx_handler_busy (struct net_device*) ;
 int netdev_rx_handler_register (struct net_device*,int ,struct macvlan_port*) ;
 int skb_queue_head_init (int *) ;

__attribute__((used)) static int macvlan_port_create(struct net_device *dev)
{
 struct macvlan_port *port;
 unsigned int i;
 int err;

 if (dev->type != ARPHRD_ETHER || dev->flags & IFF_LOOPBACK)
  return -EINVAL;

 if (netdev_is_rx_handler_busy(dev))
  return -EBUSY;

 port = kzalloc(sizeof(*port), GFP_KERNEL);
 if (port == ((void*)0))
  return -ENOMEM;

 port->dev = dev;
 ether_addr_copy(port->perm_addr, dev->dev_addr);
 INIT_LIST_HEAD(&port->vlans);
 for (i = 0; i < MACVLAN_HASH_SIZE; i++)
  INIT_HLIST_HEAD(&port->vlan_hash[i]);
 for (i = 0; i < MACVLAN_HASH_SIZE; i++)
  INIT_HLIST_HEAD(&port->vlan_source_hash[i]);

 skb_queue_head_init(&port->bc_queue);
 INIT_WORK(&port->bc_work, macvlan_process_broadcast);

 err = netdev_rx_handler_register(dev, macvlan_handle_frame, port);
 if (err)
  kfree(port);
 else
  dev->priv_flags |= IFF_MACVLAN_PORT;
 return err;
}
