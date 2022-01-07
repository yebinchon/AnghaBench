
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sonic_local {int descriptors_laddr; int descriptors; int dma_bitmode; int device; } ;
struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;


 int SIZEOF_SONIC_DESC ;
 int SONIC_BUS_SCALE (int ) ;
 int dma_free_coherent (int ,int,int ,int ) ;
 int free_netdev (struct net_device*) ;
 struct sonic_local* netdev_priv (struct net_device*) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int mac_sonic_platform_remove(struct platform_device *pdev)
{
 struct net_device *dev = platform_get_drvdata(pdev);
 struct sonic_local* lp = netdev_priv(dev);

 unregister_netdev(dev);
 dma_free_coherent(lp->device, SIZEOF_SONIC_DESC * SONIC_BUS_SCALE(lp->dma_bitmode),
                   lp->descriptors, lp->descriptors_laddr);
 free_netdev(dev);

 return 0;
}
