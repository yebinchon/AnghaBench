
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_local {int base; scalar_t__ dma_chan; } ;
struct resource {int start; } ;
struct platform_device {int dummy; } ;
struct net_device {int irq; } ;


 int IORESOURCE_MEM ;
 int SMC_IO_EXTENT ;
 int dma_release_channel (scalar_t__) ;
 int free_irq (int ,struct net_device*) ;
 int free_netdev (struct net_device*) ;
 int iounmap (int ) ;
 struct smc_local* netdev_priv (struct net_device*) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;
 int release_mem_region (int ,int ) ;
 int smc_release_attrib (struct platform_device*,struct net_device*) ;
 int smc_release_datacs (struct platform_device*,struct net_device*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int smc_drv_remove(struct platform_device *pdev)
{
 struct net_device *ndev = platform_get_drvdata(pdev);
 struct smc_local *lp = netdev_priv(ndev);
 struct resource *res;

 unregister_netdev(ndev);

 free_irq(ndev->irq, ndev);





 iounmap(lp->base);

 smc_release_datacs(pdev,ndev);
 smc_release_attrib(pdev,ndev);

 res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "smc91x-regs");
 if (!res)
  res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 release_mem_region(res->start, SMC_IO_EXTENT);

 free_netdev(ndev);

 return 0;
}
