
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct korina_private {int tx_irq; int rx_irq; int restart_task; int napi; TYPE_2__* rx_dma_regs; TYPE_1__* tx_dma_regs; int media_check_timer; } ;
struct TYPE_4__ {int dmasm; } ;
struct TYPE_3__ {int dmasm; } ;


 int DMA_STAT_DONE ;
 int DMA_STAT_ERR ;
 int DMA_STAT_FINI ;
 int DMA_STAT_HALT ;
 int cancel_work_sync (int *) ;
 int del_timer (int *) ;
 int disable_irq (int ) ;
 int free_irq (int ,struct net_device*) ;
 int korina_abort_rx (struct net_device*) ;
 int korina_abort_tx (struct net_device*) ;
 int korina_free_ring (struct net_device*) ;
 int napi_disable (int *) ;
 struct korina_private* netdev_priv (struct net_device*) ;
 int readl (int *) ;
 int writel (int,int *) ;

__attribute__((used)) static int korina_close(struct net_device *dev)
{
 struct korina_private *lp = netdev_priv(dev);
 u32 tmp;

 del_timer(&lp->media_check_timer);


 disable_irq(lp->rx_irq);
 disable_irq(lp->tx_irq);

 korina_abort_tx(dev);
 tmp = readl(&lp->tx_dma_regs->dmasm);
 tmp = tmp | DMA_STAT_FINI | DMA_STAT_ERR;
 writel(tmp, &lp->tx_dma_regs->dmasm);

 korina_abort_rx(dev);
 tmp = readl(&lp->rx_dma_regs->dmasm);
 tmp = tmp | DMA_STAT_DONE | DMA_STAT_HALT | DMA_STAT_ERR;
 writel(tmp, &lp->rx_dma_regs->dmasm);

 napi_disable(&lp->napi);

 cancel_work_sync(&lp->restart_task);

 korina_free_ring(dev);

 free_irq(lp->rx_irq, dev);
 free_irq(lp->tx_irq, dev);

 return 0;
}
