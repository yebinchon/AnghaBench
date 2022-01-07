
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct device {int dummy; } ;


 struct net_device* dev_get_drvdata (struct device*) ;
 int free_netdev (struct net_device*) ;
 int unregister_netdev (struct net_device*) ;

int xlgmac_drv_remove(struct device *dev)
{
 struct net_device *netdev = dev_get_drvdata(dev);

 unregister_netdev(netdev);
 free_netdev(netdev);

 return 0;
}
