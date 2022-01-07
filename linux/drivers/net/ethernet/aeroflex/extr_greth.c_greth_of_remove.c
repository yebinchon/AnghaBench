
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int * resource; int dev; } ;
struct net_device {scalar_t__ phydev; } ;
struct greth_private {int regs; int mdio; int tx_bd_base_phys; int tx_bd_base; int rx_bd_base_phys; int rx_bd_base; } ;


 int dma_free_coherent (int *,int,int ,int ) ;
 int free_netdev (struct net_device*) ;
 int mdiobus_unregister (int ) ;
 struct greth_private* netdev_priv (struct net_device*) ;
 int of_iounmap (int *,int ,int ) ;
 int phy_stop (scalar_t__) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int resource_size (int *) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int greth_of_remove(struct platform_device *of_dev)
{
 struct net_device *ndev = platform_get_drvdata(of_dev);
 struct greth_private *greth = netdev_priv(ndev);


 dma_free_coherent(&of_dev->dev, 1024, greth->rx_bd_base, greth->rx_bd_base_phys);

 dma_free_coherent(&of_dev->dev, 1024, greth->tx_bd_base, greth->tx_bd_base_phys);

 if (ndev->phydev)
  phy_stop(ndev->phydev);
 mdiobus_unregister(greth->mdio);

 unregister_netdev(ndev);
 free_netdev(ndev);

 of_iounmap(&of_dev->resource[0], greth->regs, resource_size(&of_dev->resource[0]));

 return 0;
}
