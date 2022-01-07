
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct velocity_info {int mac_regs; int napi; } ;
struct net_device {int dummy; } ;
struct device {int dummy; } ;


 struct net_device* dev_get_drvdata (struct device*) ;
 int free_netdev (struct net_device*) ;
 int iounmap (int ) ;
 struct velocity_info* netdev_priv (struct net_device*) ;
 int netif_napi_del (int *) ;
 int unregister_netdev (struct net_device*) ;
 int velocity_nics ;

__attribute__((used)) static int velocity_remove(struct device *dev)
{
 struct net_device *netdev = dev_get_drvdata(dev);
 struct velocity_info *vptr = netdev_priv(netdev);

 unregister_netdev(netdev);
 netif_napi_del(&vptr->napi);
 iounmap(vptr->mac_regs);
 free_netdev(netdev);
 velocity_nics--;

 return 0;
}
