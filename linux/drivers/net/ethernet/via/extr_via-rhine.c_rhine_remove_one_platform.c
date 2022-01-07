
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rhine_private {int base; } ;
struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;


 int free_netdev (struct net_device*) ;
 int iounmap (int ) ;
 struct rhine_private* netdev_priv (struct net_device*) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int rhine_remove_one_platform(struct platform_device *pdev)
{
 struct net_device *dev = platform_get_drvdata(pdev);
 struct rhine_private *rp = netdev_priv(dev);

 unregister_netdev(dev);

 iounmap(rp->base);

 free_netdev(dev);

 return 0;
}
