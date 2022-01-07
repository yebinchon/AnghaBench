
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct nb8800_tx_buf {int dma_desc; int chain_len; int ready; } ;
struct nb8800_priv {size_t tx_queue; struct nb8800_tx_buf* tx_bufs; } ;


 int NB8800_TXC_CR ;
 int NB8800_TX_DESC_ADDR ;
 int TCR_EN ;
 int TX_DESC_COUNT ;
 int nb8800_readl (struct nb8800_priv*,int ) ;
 int nb8800_writel (struct nb8800_priv*,int ,int) ;
 struct nb8800_priv* netdev_priv (struct net_device*) ;
 int wmb () ;

__attribute__((used)) static void __nb8800_tx_dma_start(struct net_device *dev)
{
 struct nb8800_priv *priv = netdev_priv(dev);
 struct nb8800_tx_buf *txb;
 u32 txc_cr;

 txb = &priv->tx_bufs[priv->tx_queue];
 if (!txb->ready)
  return;

 txc_cr = nb8800_readl(priv, NB8800_TXC_CR);
 if (txc_cr & TCR_EN)
  return;

 nb8800_writel(priv, NB8800_TX_DESC_ADDR, txb->dma_desc);
 wmb();
 nb8800_writel(priv, NB8800_TXC_CR, txc_cr | TCR_EN);

 priv->tx_queue = (priv->tx_queue + txb->chain_len) % TX_DESC_COUNT;
}
