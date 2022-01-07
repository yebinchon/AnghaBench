
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmnet_port {int * muxed_ep; struct net_device* dev; } ;
struct net_device {int dummy; } ;


 int ASSERT_RTNL () ;
 int EBUSY ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int INIT_HLIST_HEAD (int *) ;
 int RMNET_MAX_LOGICAL_EP ;
 int dev_hold (struct net_device*) ;
 int kfree (struct rmnet_port*) ;
 struct rmnet_port* kzalloc (int,int ) ;
 int netdev_dbg (struct net_device*,char*) ;
 int netdev_rx_handler_register (struct net_device*,int ,struct rmnet_port*) ;
 scalar_t__ rmnet_is_real_dev_registered (struct net_device*) ;
 int rmnet_rx_handler ;

__attribute__((used)) static int rmnet_register_real_device(struct net_device *real_dev)
{
 struct rmnet_port *port;
 int rc, entry;

 ASSERT_RTNL();

 if (rmnet_is_real_dev_registered(real_dev))
  return 0;

 port = kzalloc(sizeof(*port), GFP_ATOMIC);
 if (!port)
  return -ENOMEM;

 port->dev = real_dev;
 rc = netdev_rx_handler_register(real_dev, rmnet_rx_handler, port);
 if (rc) {
  kfree(port);
  return -EBUSY;
 }


 dev_hold(real_dev);

 for (entry = 0; entry < RMNET_MAX_LOGICAL_EP; entry++)
  INIT_HLIST_HEAD(&port->muxed_ep[entry]);

 netdev_dbg(real_dev, "registered with rmnet\n");
 return 0;
}
