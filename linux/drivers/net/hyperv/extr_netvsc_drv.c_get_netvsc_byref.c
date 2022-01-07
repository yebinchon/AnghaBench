
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device_context {int nvdev; } ;
struct net_device {int * netdev_ops; } ;


 int device_ops ;
 struct net_device* netdev_master_upper_dev_get (struct net_device*) ;
 struct net_device_context* netdev_priv (struct net_device*) ;
 int rtnl_dereference (int ) ;

__attribute__((used)) static struct net_device *get_netvsc_byref(struct net_device *vf_netdev)
{
 struct net_device_context *net_device_ctx;
 struct net_device *dev;

 dev = netdev_master_upper_dev_get(vf_netdev);
 if (!dev || dev->netdev_ops != &device_ops)
  return ((void*)0);

 net_device_ctx = netdev_priv(dev);
 if (!rtnl_dereference(net_device_ctx->nvdev))
  return ((void*)0);

 return dev;
}
