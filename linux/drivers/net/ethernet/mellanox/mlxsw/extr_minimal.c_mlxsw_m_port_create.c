
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct net_device {int * ethtool_ops; int * netdev_ops; } ;
struct mlxsw_m_port {size_t local_port; size_t module; struct mlxsw_m* mlxsw_m; struct net_device* dev; } ;
struct mlxsw_m {int core; struct mlxsw_m_port** ports; TYPE_1__* bus_info; int base_mac; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int SET_NETDEV_DEV (struct net_device*,int ) ;
 struct net_device* alloc_etherdev (int) ;
 int dev_err (int ,char*,size_t) ;
 int free_netdev (struct net_device*) ;
 int mlxsw_core_port_eth_set (int ,size_t,struct mlxsw_m_port*,struct net_device*) ;
 int mlxsw_core_port_fini (int ,size_t) ;
 int mlxsw_core_port_init (int ,size_t,size_t,int,int ,int ,int) ;
 int mlxsw_m_port_dev_addr_get (struct mlxsw_m_port*) ;
 int mlxsw_m_port_ethtool_ops ;
 int mlxsw_m_port_netdev_ops ;
 struct mlxsw_m_port* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int register_netdev (struct net_device*) ;

__attribute__((used)) static int
mlxsw_m_port_create(struct mlxsw_m *mlxsw_m, u8 local_port, u8 module)
{
 struct mlxsw_m_port *mlxsw_m_port;
 struct net_device *dev;
 int err;

 err = mlxsw_core_port_init(mlxsw_m->core, local_port,
       module + 1, 0, 0,
       mlxsw_m->base_mac,
       sizeof(mlxsw_m->base_mac));
 if (err) {
  dev_err(mlxsw_m->bus_info->dev, "Port %d: Failed to init core port\n",
   local_port);
  return err;
 }

 dev = alloc_etherdev(sizeof(struct mlxsw_m_port));
 if (!dev) {
  err = -ENOMEM;
  goto err_alloc_etherdev;
 }

 SET_NETDEV_DEV(dev, mlxsw_m->bus_info->dev);
 mlxsw_m_port = netdev_priv(dev);
 mlxsw_m_port->dev = dev;
 mlxsw_m_port->mlxsw_m = mlxsw_m;
 mlxsw_m_port->local_port = local_port;
 mlxsw_m_port->module = module;

 dev->netdev_ops = &mlxsw_m_port_netdev_ops;
 dev->ethtool_ops = &mlxsw_m_port_ethtool_ops;

 err = mlxsw_m_port_dev_addr_get(mlxsw_m_port);
 if (err) {
  dev_err(mlxsw_m->bus_info->dev, "Port %d: Unable to get port mac address\n",
   mlxsw_m_port->local_port);
  goto err_dev_addr_get;
 }

 netif_carrier_off(dev);
 mlxsw_m->ports[local_port] = mlxsw_m_port;
 err = register_netdev(dev);
 if (err) {
  dev_err(mlxsw_m->bus_info->dev, "Port %d: Failed to register netdev\n",
   mlxsw_m_port->local_port);
  goto err_register_netdev;
 }

 mlxsw_core_port_eth_set(mlxsw_m->core, mlxsw_m_port->local_port,
    mlxsw_m_port, dev);

 return 0;

err_register_netdev:
 mlxsw_m->ports[local_port] = ((void*)0);
 free_netdev(dev);
err_dev_addr_get:
err_alloc_etherdev:
 mlxsw_core_port_fini(mlxsw_m->core, local_port);
 return err;
}
