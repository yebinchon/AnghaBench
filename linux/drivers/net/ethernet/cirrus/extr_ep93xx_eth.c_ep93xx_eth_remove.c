
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;
struct ep93xx_priv {int * res; int * base_addr; } ;


 int ep93xx_free_buffers (struct ep93xx_priv*) ;
 int free_netdev (struct net_device*) ;
 int iounmap (int *) ;
 int kfree (int *) ;
 struct ep93xx_priv* netdev_priv (struct net_device*) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int release_resource (int *) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int ep93xx_eth_remove(struct platform_device *pdev)
{
 struct net_device *dev;
 struct ep93xx_priv *ep;

 dev = platform_get_drvdata(pdev);
 if (dev == ((void*)0))
  return 0;

 ep = netdev_priv(dev);


 unregister_netdev(dev);
 ep93xx_free_buffers(ep);

 if (ep->base_addr != ((void*)0))
  iounmap(ep->base_addr);

 if (ep->res != ((void*)0)) {
  release_resource(ep->res);
  kfree(ep->res);
 }

 free_netdev(dev);

 return 0;
}
