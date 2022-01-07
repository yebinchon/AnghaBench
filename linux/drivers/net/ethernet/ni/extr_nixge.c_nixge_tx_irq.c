
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;
typedef unsigned int u32 ;
struct nixge_priv {size_t tx_bd_ci; int dma_err_tasklet; int * tx_bd_v; int ndev; } ;
struct net_device {int dummy; } ;
typedef int irqreturn_t ;
typedef scalar_t__ dma_addr_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 unsigned int XAXIDMA_IRQ_ALL_MASK ;
 unsigned int XAXIDMA_IRQ_DELAY_MASK ;
 unsigned int XAXIDMA_IRQ_ERROR_MASK ;
 unsigned int XAXIDMA_IRQ_IOC_MASK ;
 int XAXIDMA_RX_CR_OFFSET ;
 int XAXIDMA_TX_CR_OFFSET ;
 int XAXIDMA_TX_SR_OFFSET ;
 int netdev_err (struct net_device*,char*,...) ;
 struct nixge_priv* netdev_priv (void*) ;
 unsigned int nixge_dma_read_reg (struct nixge_priv*,int ) ;
 int nixge_dma_write_reg (struct nixge_priv*,int ,unsigned int) ;
 scalar_t__ nixge_hw_dma_bd_get_addr (int *,scalar_t__) ;
 int nixge_start_xmit_done (int ) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t nixge_tx_irq(int irq, void *_ndev)
{
 struct nixge_priv *priv = netdev_priv(_ndev);
 struct net_device *ndev = _ndev;
 unsigned int status;
 dma_addr_t phys;
 u32 cr;

 status = nixge_dma_read_reg(priv, XAXIDMA_TX_SR_OFFSET);
 if (status & (XAXIDMA_IRQ_IOC_MASK | XAXIDMA_IRQ_DELAY_MASK)) {
  nixge_dma_write_reg(priv, XAXIDMA_TX_SR_OFFSET, status);
  nixge_start_xmit_done(priv->ndev);
  goto out;
 }
 if (!(status & XAXIDMA_IRQ_ALL_MASK)) {
  netdev_err(ndev, "No interrupts asserted in Tx path\n");
  return IRQ_NONE;
 }
 if (status & XAXIDMA_IRQ_ERROR_MASK) {
  phys = nixge_hw_dma_bd_get_addr(&priv->tx_bd_v[priv->tx_bd_ci],
      phys);

  netdev_err(ndev, "DMA Tx error 0x%x\n", status);
  netdev_err(ndev, "Current BD is at: 0x%llx\n", (u64)phys);

  cr = nixge_dma_read_reg(priv, XAXIDMA_TX_CR_OFFSET);

  cr &= (~XAXIDMA_IRQ_ALL_MASK);

  nixge_dma_write_reg(priv, XAXIDMA_TX_CR_OFFSET, cr);

  cr = nixge_dma_read_reg(priv, XAXIDMA_RX_CR_OFFSET);

  cr &= (~XAXIDMA_IRQ_ALL_MASK);

  nixge_dma_write_reg(priv, XAXIDMA_RX_CR_OFFSET, cr);

  tasklet_schedule(&priv->dma_err_tasklet);
  nixge_dma_write_reg(priv, XAXIDMA_TX_SR_OFFSET, status);
 }
out:
 return IRQ_HANDLED;
}
