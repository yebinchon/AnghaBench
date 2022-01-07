
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;


 int free_netdev (struct net_device*) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int cpmac_remove(struct platform_device *pdev)
{
 struct net_device *dev = platform_get_drvdata(pdev);

 unregister_netdev(dev);
 free_netdev(dev);

 return 0;
}
