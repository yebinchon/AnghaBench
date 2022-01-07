
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_2__ {int parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct i596_private {int mpu_port; int ca; int dma_addr; int dma; } ;


 int LIB82596_DMA_ATTR ;
 int dma_free_attrs (int ,int,int ,int ,int ) ;
 int free_netdev (struct net_device*) ;
 int iounmap (int ) ;
 struct i596_private* netdev_priv (struct net_device*) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int sni_82596_driver_remove(struct platform_device *pdev)
{
 struct net_device *dev = platform_get_drvdata(pdev);
 struct i596_private *lp = netdev_priv(dev);

 unregister_netdev(dev);
 dma_free_attrs(dev->dev.parent, sizeof(struct i596_private), lp->dma,
         lp->dma_addr, LIB82596_DMA_ATTR);
 iounmap(lp->ca);
 iounmap(lp->mpu_port);
 free_netdev (dev);
 return 0;
}
