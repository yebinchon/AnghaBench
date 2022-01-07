
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmnet_port {scalar_t__ nr_rmnet_devs; } ;
struct net_device {int dummy; } ;


 int EINVAL ;
 int dev_put (struct net_device*) ;
 int kfree (struct rmnet_port*) ;
 int netdev_dbg (struct net_device*,char*) ;
 int netdev_rx_handler_unregister (struct net_device*) ;

__attribute__((used)) static int rmnet_unregister_real_device(struct net_device *real_dev,
     struct rmnet_port *port)
{
 if (port->nr_rmnet_devs)
  return -EINVAL;

 netdev_rx_handler_unregister(real_dev);

 kfree(port);


 dev_put(real_dev);

 netdev_dbg(real_dev, "Removed from rmnet\n");
 return 0;
}
