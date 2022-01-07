
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nixge_priv {int rx_irq; int tx_irq; int dma_err_tasklet; int napi; } ;
struct net_device {scalar_t__ phydev; } ;


 int XAXIDMA_CR_RUNSTOP_MASK ;
 int XAXIDMA_RX_CR_OFFSET ;
 int XAXIDMA_TX_CR_OFFSET ;
 int free_irq (int ,struct net_device*) ;
 int napi_disable (int *) ;
 struct nixge_priv* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int nixge_dma_read_reg (struct nixge_priv*,int ) ;
 int nixge_dma_write_reg (struct nixge_priv*,int ,int) ;
 int nixge_hw_dma_bd_release (struct net_device*) ;
 int phy_disconnect (scalar_t__) ;
 int phy_stop (scalar_t__) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static int nixge_stop(struct net_device *ndev)
{
 struct nixge_priv *priv = netdev_priv(ndev);
 u32 cr;

 netif_stop_queue(ndev);
 napi_disable(&priv->napi);

 if (ndev->phydev) {
  phy_stop(ndev->phydev);
  phy_disconnect(ndev->phydev);
 }

 cr = nixge_dma_read_reg(priv, XAXIDMA_RX_CR_OFFSET);
 nixge_dma_write_reg(priv, XAXIDMA_RX_CR_OFFSET,
       cr & (~XAXIDMA_CR_RUNSTOP_MASK));
 cr = nixge_dma_read_reg(priv, XAXIDMA_TX_CR_OFFSET);
 nixge_dma_write_reg(priv, XAXIDMA_TX_CR_OFFSET,
       cr & (~XAXIDMA_CR_RUNSTOP_MASK));

 tasklet_kill(&priv->dma_err_tasklet);

 free_irq(priv->tx_irq, ndev);
 free_irq(priv->rx_irq, ndev);

 nixge_hw_dma_bd_release(ndev);

 return 0;
}
