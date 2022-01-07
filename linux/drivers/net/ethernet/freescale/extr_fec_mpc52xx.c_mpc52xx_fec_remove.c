
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct net_device {int base_addr; int irq; } ;
struct mpc52xx_fec_priv {int fec; int tx_dmatsk; int rx_dmatsk; int * phy_node; } ;
struct mpc52xx_fec {int dummy; } ;


 int bcom_fec_rx_release (int ) ;
 int bcom_fec_tx_release (int ) ;
 int free_netdev (struct net_device*) ;
 int iounmap (int ) ;
 int irq_dispose_mapping (int ) ;
 struct mpc52xx_fec_priv* netdev_priv (struct net_device*) ;
 int of_node_put (int *) ;
 struct net_device* platform_get_drvdata (struct platform_device*) ;
 int release_mem_region (int ,int) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int
mpc52xx_fec_remove(struct platform_device *op)
{
 struct net_device *ndev;
 struct mpc52xx_fec_priv *priv;

 ndev = platform_get_drvdata(op);
 priv = netdev_priv(ndev);

 unregister_netdev(ndev);

 of_node_put(priv->phy_node);
 priv->phy_node = ((void*)0);

 irq_dispose_mapping(ndev->irq);

 bcom_fec_rx_release(priv->rx_dmatsk);
 bcom_fec_tx_release(priv->tx_dmatsk);

 iounmap(priv->fec);

 release_mem_region(ndev->base_addr, sizeof(struct mpc52xx_fec));

 free_netdev(ndev);

 return 0;
}
