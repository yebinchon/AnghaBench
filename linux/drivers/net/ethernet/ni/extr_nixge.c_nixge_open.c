
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;
struct nixge_priv {int dma_err_tasklet; int tx_irq; int rx_irq; int napi; int phy_mode; int phy_node; } ;
struct net_device {int name; } ;


 int ENODEV ;
 int free_irq (int ,struct net_device*) ;
 int napi_enable (int *) ;
 int netdev_err (struct net_device*,char*) ;
 struct nixge_priv* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int nixge_device_reset (struct net_device*) ;
 int nixge_dma_err_handler ;
 int nixge_handle_link_change ;
 int nixge_rx_irq ;
 int nixge_tx_irq ;
 struct phy_device* of_phy_connect (struct net_device*,int ,int *,int ,int ) ;
 int phy_disconnect (struct phy_device*) ;
 int phy_start (struct phy_device*) ;
 int phy_stop (struct phy_device*) ;
 int request_irq (int ,int ,int ,int ,struct net_device*) ;
 int tasklet_init (int *,int ,unsigned long) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static int nixge_open(struct net_device *ndev)
{
 struct nixge_priv *priv = netdev_priv(ndev);
 struct phy_device *phy;
 int ret;

 nixge_device_reset(ndev);

 phy = of_phy_connect(ndev, priv->phy_node,
        &nixge_handle_link_change, 0, priv->phy_mode);
 if (!phy)
  return -ENODEV;

 phy_start(phy);


 tasklet_init(&priv->dma_err_tasklet, nixge_dma_err_handler,
       (unsigned long)priv);

 napi_enable(&priv->napi);


 ret = request_irq(priv->tx_irq, nixge_tx_irq, 0, ndev->name, ndev);
 if (ret)
  goto err_tx_irq;

 ret = request_irq(priv->rx_irq, nixge_rx_irq, 0, ndev->name, ndev);
 if (ret)
  goto err_rx_irq;

 netif_start_queue(ndev);

 return 0;

err_rx_irq:
 free_irq(priv->tx_irq, ndev);
err_tx_irq:
 phy_stop(phy);
 phy_disconnect(phy);
 tasklet_kill(&priv->dma_err_tasklet);
 netdev_err(ndev, "request_irq() failed\n");
 return ret;
}
