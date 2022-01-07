
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct temac_local {int rx_irq; int tx_irq; } ;
struct phy_device {int dummy; } ;
struct net_device {int dev; struct phy_device* phydev; } ;


 int dev_dbg (int *,char*) ;
 int free_irq (int ,struct net_device*) ;
 struct temac_local* netdev_priv (struct net_device*) ;
 int phy_disconnect (struct phy_device*) ;
 int temac_dma_bd_release (struct net_device*) ;

__attribute__((used)) static int temac_stop(struct net_device *ndev)
{
 struct temac_local *lp = netdev_priv(ndev);
 struct phy_device *phydev = ndev->phydev;

 dev_dbg(&ndev->dev, "temac_close()\n");

 free_irq(lp->tx_irq, ndev);
 free_irq(lp->rx_irq, ndev);

 if (phydev)
  phy_disconnect(phydev);

 temac_dma_bd_release(ndev);

 return 0;
}
