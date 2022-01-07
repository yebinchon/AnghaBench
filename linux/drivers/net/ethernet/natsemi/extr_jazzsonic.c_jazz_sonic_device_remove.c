
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sonic_local {int descriptors_laddr; int descriptors; int dma_bitmode; int device; } ;
struct platform_device {int dummy; } ;
struct net_device {int base_addr; } ;


 int SIZEOF_SONIC_DESC ;
 int SONIC_BUS_SCALE (int ) ;
 int SONIC_MEM_SIZE ;
 int dma_free_coherent (int ,int,int ,int ) ;
 int free_netdev (struct net_device*) ;
 struct sonic_local* netdev_priv (struct net_device*) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int release_mem_region (int ,int ) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int jazz_sonic_device_remove(struct platform_device *pdev)
{
 struct net_device *dev = platform_get_drvdata(pdev);
 struct sonic_local* lp = netdev_priv(dev);

 unregister_netdev(dev);
 dma_free_coherent(lp->device, SIZEOF_SONIC_DESC * SONIC_BUS_SCALE(lp->dma_bitmode),
                   lp->descriptors, lp->descriptors_laddr);
 release_mem_region(dev->base_addr, SONIC_MEM_SIZE);
 free_netdev(dev);

 return 0;
}
