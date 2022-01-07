
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct rmnet_priv {void* mux_id; struct net_device* real_dev; } ;
struct rmnet_port {int nr_rmnet_devs; } ;
struct rmnet_endpoint {void* mux_id; struct net_device* egress_dev; } ;
struct net_device {int hw_features; int * rtnl_link_ops; } ;


 int EBUSY ;
 int EINVAL ;
 int NETIF_F_IPV6_CSUM ;
 int NETIF_F_IP_CSUM ;
 int NETIF_F_RXCSUM ;
 int NETIF_F_SG ;
 int netdev_dbg (struct net_device*,char*) ;
 struct rmnet_priv* netdev_priv (struct net_device*) ;
 int register_netdevice (struct net_device*) ;
 scalar_t__ rmnet_get_endpoint (struct rmnet_port*,void*) ;
 int rmnet_link_ops ;

int rmnet_vnd_newlink(u8 id, struct net_device *rmnet_dev,
        struct rmnet_port *port,
        struct net_device *real_dev,
        struct rmnet_endpoint *ep)
{
 struct rmnet_priv *priv = netdev_priv(rmnet_dev);
 int rc;

 if (ep->egress_dev)
  return -EINVAL;

 if (rmnet_get_endpoint(port, id))
  return -EBUSY;

 rmnet_dev->hw_features = NETIF_F_RXCSUM;
 rmnet_dev->hw_features |= NETIF_F_IP_CSUM | NETIF_F_IPV6_CSUM;
 rmnet_dev->hw_features |= NETIF_F_SG;

 priv->real_dev = real_dev;

 rc = register_netdevice(rmnet_dev);
 if (!rc) {
  ep->egress_dev = rmnet_dev;
  ep->mux_id = id;
  port->nr_rmnet_devs++;

  rmnet_dev->rtnl_link_ops = &rmnet_link_ops;

  priv->mux_id = id;

  netdev_dbg(rmnet_dev, "rmnet dev created\n");
 }

 return rc;
}
