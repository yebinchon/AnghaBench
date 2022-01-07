
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pxa168_eth_private {int tx_timeout_task; int smi_bus; scalar_t__ clk; int * htpr; int htpr_dma; TYPE_1__* dev; } ;
struct platform_device {int dummy; } ;
struct net_device {scalar_t__ phydev; } ;
struct TYPE_4__ {int parent; } ;
struct TYPE_3__ {TYPE_2__ dev; } ;


 int HASH_ADDR_TABLE_SIZE ;
 int cancel_work_sync (int *) ;
 int clk_disable_unprepare (scalar_t__) ;
 int dma_free_coherent (int ,int ,int *,int ) ;
 int free_netdev (struct net_device*) ;
 int mdiobus_free (int ) ;
 int mdiobus_unregister (int ) ;
 struct pxa168_eth_private* netdev_priv (struct net_device*) ;
 int phy_disconnect (scalar_t__) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int pxa168_eth_remove(struct platform_device *pdev)
{
 struct net_device *dev = platform_get_drvdata(pdev);
 struct pxa168_eth_private *pep = netdev_priv(dev);

 if (pep->htpr) {
  dma_free_coherent(pep->dev->dev.parent, HASH_ADDR_TABLE_SIZE,
      pep->htpr, pep->htpr_dma);
  pep->htpr = ((void*)0);
 }
 if (dev->phydev)
  phy_disconnect(dev->phydev);
 if (pep->clk) {
  clk_disable_unprepare(pep->clk);
 }

 mdiobus_unregister(pep->smi_bus);
 mdiobus_free(pep->smi_bus);
 unregister_netdev(dev);
 cancel_work_sync(&pep->tx_timeout_task);
 free_netdev(dev);
 return 0;
}
