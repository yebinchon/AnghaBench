
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct net_device {int dev; } ;
struct axienet_local {size_t tx_bd_ci; int dma_err_tasklet; TYPE_1__* tx_bd_v; int ndev; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {unsigned int phys; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 unsigned int XAXIDMA_IRQ_ALL_MASK ;
 unsigned int XAXIDMA_IRQ_DELAY_MASK ;
 unsigned int XAXIDMA_IRQ_ERROR_MASK ;
 unsigned int XAXIDMA_IRQ_IOC_MASK ;
 int XAXIDMA_RX_CR_OFFSET ;
 int XAXIDMA_TX_CR_OFFSET ;
 int XAXIDMA_TX_SR_OFFSET ;
 unsigned int axienet_dma_in32 (struct axienet_local*,int ) ;
 int axienet_dma_out32 (struct axienet_local*,int ,unsigned int) ;
 int axienet_start_xmit_done (int ) ;
 int dev_err (int *,char*,unsigned int) ;
 struct axienet_local* netdev_priv (struct net_device*) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t axienet_tx_irq(int irq, void *_ndev)
{
 u32 cr;
 unsigned int status;
 struct net_device *ndev = _ndev;
 struct axienet_local *lp = netdev_priv(ndev);

 status = axienet_dma_in32(lp, XAXIDMA_TX_SR_OFFSET);
 if (status & (XAXIDMA_IRQ_IOC_MASK | XAXIDMA_IRQ_DELAY_MASK)) {
  axienet_dma_out32(lp, XAXIDMA_TX_SR_OFFSET, status);
  axienet_start_xmit_done(lp->ndev);
  goto out;
 }
 if (!(status & XAXIDMA_IRQ_ALL_MASK))
  return IRQ_NONE;
 if (status & XAXIDMA_IRQ_ERROR_MASK) {
  dev_err(&ndev->dev, "DMA Tx error 0x%x\n", status);
  dev_err(&ndev->dev, "Current BD is at: 0x%x\n",
   (lp->tx_bd_v[lp->tx_bd_ci]).phys);

  cr = axienet_dma_in32(lp, XAXIDMA_TX_CR_OFFSET);

  cr &= (~XAXIDMA_IRQ_ALL_MASK);

  axienet_dma_out32(lp, XAXIDMA_TX_CR_OFFSET, cr);

  cr = axienet_dma_in32(lp, XAXIDMA_RX_CR_OFFSET);

  cr &= (~XAXIDMA_IRQ_ALL_MASK);

  axienet_dma_out32(lp, XAXIDMA_RX_CR_OFFSET, cr);

  tasklet_schedule(&lp->dma_err_tasklet);
  axienet_dma_out32(lp, XAXIDMA_TX_SR_OFFSET, status);
 }
out:
 return IRQ_HANDLED;
}
