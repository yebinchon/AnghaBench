
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nsim_dev_port {int dummy; } ;
struct nsim_dev {TYPE_1__* nsim_bus_dev; } ;
struct netdevsim {TYPE_1__* nsim_bus_dev; struct nsim_dev_port* nsim_dev_port; struct nsim_dev* nsim_dev; struct net_device* netdev; } ;
struct net_device {int * netdev_ops; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 struct netdevsim* ERR_PTR (int) ;
 int NET_NAME_UNKNOWN ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 struct net_device* alloc_netdev (int,char*,int ,int ) ;
 int free_netdev (struct net_device*) ;
 struct netdevsim* netdev_priv (struct net_device*) ;
 int nsim_bpf_init (struct netdevsim*) ;
 int nsim_bpf_uninit (struct netdevsim*) ;
 int nsim_ipsec_init (struct netdevsim*) ;
 int nsim_ipsec_teardown (struct netdevsim*) ;
 int nsim_netdev_ops ;
 int nsim_setup ;
 int register_netdevice (struct net_device*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

struct netdevsim *
nsim_create(struct nsim_dev *nsim_dev, struct nsim_dev_port *nsim_dev_port)
{
 struct net_device *dev;
 struct netdevsim *ns;
 int err;

 dev = alloc_netdev(sizeof(*ns), "eth%d", NET_NAME_UNKNOWN, nsim_setup);
 if (!dev)
  return ERR_PTR(-ENOMEM);

 ns = netdev_priv(dev);
 ns->netdev = dev;
 ns->nsim_dev = nsim_dev;
 ns->nsim_dev_port = nsim_dev_port;
 ns->nsim_bus_dev = nsim_dev->nsim_bus_dev;
 SET_NETDEV_DEV(dev, &ns->nsim_bus_dev->dev);
 dev->netdev_ops = &nsim_netdev_ops;

 rtnl_lock();
 err = nsim_bpf_init(ns);
 if (err)
  goto err_free_netdev;

 nsim_ipsec_init(ns);

 err = register_netdevice(dev);
 if (err)
  goto err_ipsec_teardown;
 rtnl_unlock();

 return ns;

err_ipsec_teardown:
 nsim_ipsec_teardown(ns);
 nsim_bpf_uninit(ns);
 rtnl_unlock();
err_free_netdev:
 free_netdev(dev);
 return ERR_PTR(err);
}
