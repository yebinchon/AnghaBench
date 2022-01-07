
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct netdata_local {scalar_t__ dma_buff_size; int clk; int mii_bus; int net_base; int dma_buff_base_p; int dma_buff_base_v; TYPE_1__* pdev; } ;
struct net_device {int irq; } ;
struct TYPE_2__ {int dev; } ;


 int clk_disable_unprepare (int ) ;
 int clk_put (int ) ;
 int dma_free_coherent (int *,scalar_t__,int ,int ) ;
 int free_irq (int ,struct net_device*) ;
 int free_netdev (struct net_device*) ;
 int iounmap (int ) ;
 scalar_t__ lpc32xx_return_iram (int *,int *) ;
 int mdiobus_free (int ) ;
 int mdiobus_unregister (int ) ;
 struct netdata_local* netdev_priv (struct net_device*) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int unregister_netdev (struct net_device*) ;
 int use_iram_for_net (int *) ;

__attribute__((used)) static int lpc_eth_drv_remove(struct platform_device *pdev)
{
 struct net_device *ndev = platform_get_drvdata(pdev);
 struct netdata_local *pldat = netdev_priv(ndev);

 unregister_netdev(ndev);

 if (!use_iram_for_net(&pldat->pdev->dev) ||
     pldat->dma_buff_size > lpc32xx_return_iram(((void*)0), ((void*)0)))
  dma_free_coherent(&pldat->pdev->dev, pldat->dma_buff_size,
      pldat->dma_buff_base_v,
      pldat->dma_buff_base_p);
 free_irq(ndev->irq, ndev);
 iounmap(pldat->net_base);
 mdiobus_unregister(pldat->mii_bus);
 mdiobus_free(pldat->mii_bus);
 clk_disable_unprepare(pldat->clk);
 clk_put(pldat->clk);
 free_netdev(ndev);

 return 0;
}
