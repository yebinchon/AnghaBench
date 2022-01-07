
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int dropped; int fifo_errors; } ;
struct ave_private {int napi_tx; int napi_rx; scalar_t__ base; TYPE_1__ stats_rx; } ;
typedef int irqreturn_t ;


 scalar_t__ AVE_GISR ;
 int AVE_GI_PHY ;
 int AVE_GI_RXDROP ;
 int AVE_GI_RXERR ;
 int AVE_GI_RXIINT ;
 int AVE_GI_RXOVF ;
 int AVE_GI_TX ;
 int IRQ_HANDLED ;
 int ave_irq_disable_all (struct net_device*) ;
 int ave_irq_restore (struct net_device*,int) ;
 int ave_rxfifo_reset (struct net_device*) ;
 int napi_schedule (int *) ;
 int netdev_err (struct net_device*,char*) ;
 struct ave_private* netdev_priv (struct net_device*) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t ave_irq_handler(int irq, void *netdev)
{
 struct net_device *ndev = (struct net_device *)netdev;
 struct ave_private *priv = netdev_priv(ndev);
 u32 gimr_val, gisr_val;

 gimr_val = ave_irq_disable_all(ndev);


 gisr_val = readl(priv->base + AVE_GISR);


 if (gisr_val & AVE_GI_PHY)
  writel(AVE_GI_PHY, priv->base + AVE_GISR);


 if (gisr_val & AVE_GI_RXERR) {
  writel(AVE_GI_RXERR, priv->base + AVE_GISR);
  netdev_err(ndev, "receive a packet exceeding frame buffer\n");
 }

 gisr_val &= gimr_val;
 if (!gisr_val)
  goto exit_isr;


 if (gisr_val & AVE_GI_RXOVF) {
  priv->stats_rx.fifo_errors++;
  ave_rxfifo_reset(ndev);
  goto exit_isr;
 }


 if (gisr_val & AVE_GI_RXDROP) {
  priv->stats_rx.dropped++;
  writel(AVE_GI_RXDROP, priv->base + AVE_GISR);
 }


 if (gisr_val & AVE_GI_RXIINT) {
  napi_schedule(&priv->napi_rx);

  gimr_val &= ~AVE_GI_RXIINT;
 }


 if (gisr_val & AVE_GI_TX) {
  napi_schedule(&priv->napi_tx);

  gimr_val &= ~AVE_GI_TX;
 }

exit_isr:
 ave_irq_restore(ndev, gimr_val);

 return IRQ_HANDLED;
}
