
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rmnet_priv {struct net_device* real_dev; } ;
struct rmnet_port {int * bridge_ep; int rmnet_mode; } ;
struct net_device {int dummy; } ;


 int RMNET_EPMODE_VND ;
 int netdev_dbg (struct net_device*,char*) ;
 struct rmnet_priv* netdev_priv (struct net_device*) ;
 struct rmnet_port* rmnet_get_port (struct net_device*) ;
 int rmnet_unregister_real_device (struct net_device*,struct rmnet_port*) ;

int rmnet_del_bridge(struct net_device *rmnet_dev,
       struct net_device *slave_dev)
{
 struct rmnet_priv *priv = netdev_priv(rmnet_dev);
 struct net_device *real_dev = priv->real_dev;
 struct rmnet_port *port, *slave_port;

 port = rmnet_get_port(real_dev);
 port->rmnet_mode = RMNET_EPMODE_VND;
 port->bridge_ep = ((void*)0);

 slave_port = rmnet_get_port(slave_dev);
 rmnet_unregister_real_device(slave_dev, slave_port);

 netdev_dbg(slave_dev, "removed from rmnet as slave\n");
 return 0;
}
