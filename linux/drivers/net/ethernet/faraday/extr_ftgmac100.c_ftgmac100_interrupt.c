
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_fifo_errors; int rx_fifo_errors; int rx_over_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct ftgmac100 {int need_mac_restart; int napi; scalar_t__ base; int reset_task; } ;
typedef int irqreturn_t ;


 unsigned int FTGMAC100_INT_AHB_ERR ;
 unsigned int FTGMAC100_INT_BAD ;
 unsigned int FTGMAC100_INT_NO_RXBUF ;
 unsigned int FTGMAC100_INT_RPKT_LOST ;
 unsigned int FTGMAC100_INT_XPKT_LOST ;
 scalar_t__ FTGMAC100_OFFSET_IER ;
 scalar_t__ FTGMAC100_OFFSET_ISR ;
 int IRQ_HANDLED ;
 unsigned int ioread32 (scalar_t__) ;
 int iowrite32 (unsigned int,scalar_t__) ;
 int napi_schedule_irqoff (int *) ;
 scalar_t__ net_ratelimit () ;
 struct ftgmac100* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*) ;
 int schedule_work (int *) ;
 scalar_t__ unlikely (unsigned int) ;

__attribute__((used)) static irqreturn_t ftgmac100_interrupt(int irq, void *dev_id)
{
 struct net_device *netdev = dev_id;
 struct ftgmac100 *priv = netdev_priv(netdev);
 unsigned int status, new_mask = FTGMAC100_INT_BAD;


 status = ioread32(priv->base + FTGMAC100_OFFSET_ISR);
 iowrite32(status, priv->base + FTGMAC100_OFFSET_ISR);
 if (unlikely(status & FTGMAC100_INT_BAD)) {


  if (status & FTGMAC100_INT_NO_RXBUF)
   netdev->stats.rx_over_errors++;


  if (status & FTGMAC100_INT_RPKT_LOST)
   netdev->stats.rx_fifo_errors++;


  if (status & FTGMAC100_INT_XPKT_LOST)
   netdev->stats.tx_fifo_errors++;


  if (status & FTGMAC100_INT_AHB_ERR) {
   if (net_ratelimit())
    netdev_warn(netdev,
        "AHB bus error ! Resetting chip.\n");
   iowrite32(0, priv->base + FTGMAC100_OFFSET_IER);
   schedule_work(&priv->reset_task);
   return IRQ_HANDLED;
  }




  priv->need_mac_restart = 1;


  new_mask &= ~status;
 }


 iowrite32(new_mask, priv->base + FTGMAC100_OFFSET_IER);


 napi_schedule_irqoff(&priv->napi);

 return IRQ_HANDLED;
}
