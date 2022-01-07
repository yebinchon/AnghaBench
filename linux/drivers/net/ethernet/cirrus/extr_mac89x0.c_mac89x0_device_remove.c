
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct net_device {scalar_t__ base_addr; } ;


 scalar_t__ ADD_PORT ;
 int free_netdev (struct net_device*) ;
 int nubus_writew (int ,scalar_t__) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int mac89x0_device_remove(struct platform_device *pdev)
{
 struct net_device *dev = platform_get_drvdata(pdev);

 unregister_netdev(dev);
 nubus_writew(0, dev->base_addr + ADD_PORT);
 free_netdev(dev);
 return 0;
}
