
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;
struct lance_private {struct net_device* dev; } ;


 int free_netdev (struct net_device*) ;
 int lance_free_hwresources (struct lance_private*) ;
 struct lance_private* platform_get_drvdata (struct platform_device*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int sunlance_sbus_remove(struct platform_device *op)
{
 struct lance_private *lp = platform_get_drvdata(op);
 struct net_device *net_dev = lp->dev;

 unregister_netdev(net_dev);

 lance_free_hwresources(lp);

 free_netdev(net_dev);

 return 0;
}
