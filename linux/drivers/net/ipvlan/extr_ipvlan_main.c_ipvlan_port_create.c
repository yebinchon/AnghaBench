
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ipvl_port {int dev_id_start; int ida; int wq; int backlog; int * hlhead; int ipvlans; int mode; struct net_device* dev; int pnet; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_HLIST_HEAD (int *) ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int IPVLAN_HASH_SIZE ;
 int IPVLAN_MODE_L3 ;
 int dev_net (struct net_device*) ;
 int ida_init (int *) ;
 int ipvlan_handle_frame ;
 int ipvlan_process_multicast ;
 int kfree (struct ipvl_port*) ;
 struct ipvl_port* kzalloc (int,int ) ;
 int netdev_rx_handler_register (struct net_device*,int ,struct ipvl_port*) ;
 int skb_queue_head_init (int *) ;
 int write_pnet (int *,int ) ;

__attribute__((used)) static int ipvlan_port_create(struct net_device *dev)
{
 struct ipvl_port *port;
 int err, idx;

 port = kzalloc(sizeof(struct ipvl_port), GFP_KERNEL);
 if (!port)
  return -ENOMEM;

 write_pnet(&port->pnet, dev_net(dev));
 port->dev = dev;
 port->mode = IPVLAN_MODE_L3;
 INIT_LIST_HEAD(&port->ipvlans);
 for (idx = 0; idx < IPVLAN_HASH_SIZE; idx++)
  INIT_HLIST_HEAD(&port->hlhead[idx]);

 skb_queue_head_init(&port->backlog);
 INIT_WORK(&port->wq, ipvlan_process_multicast);
 ida_init(&port->ida);
 port->dev_id_start = 1;

 err = netdev_rx_handler_register(dev, ipvlan_handle_frame, port);
 if (err)
  goto err;

 return 0;

err:
 kfree(port);
 return err;
}
