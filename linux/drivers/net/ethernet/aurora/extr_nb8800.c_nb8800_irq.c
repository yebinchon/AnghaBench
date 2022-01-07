
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct nb8800_priv {int rx_itr_poll; int napi; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int NB8800_RXC_SR ;
 int NB8800_RX_ITR ;
 int NB8800_TXC_SR ;
 int RSR_DE ;
 int RSR_DI ;
 int RSR_RI ;
 int RSR_RO ;
 int TSR_DE ;
 int TSR_DI ;
 int TSR_TI ;
 int TSR_TO ;
 scalar_t__ likely (int) ;
 int napi_schedule_irqoff (int *) ;
 int nb8800_readl (struct nb8800_priv*,int ) ;
 int nb8800_tx_dma_start_irq (struct net_device*) ;
 int nb8800_writel (struct nb8800_priv*,int ,int) ;
 int netdev_err (struct net_device*,char*) ;
 struct nb8800_priv* netdev_priv (struct net_device*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t nb8800_irq(int irq, void *dev_id)
{
 struct net_device *dev = dev_id;
 struct nb8800_priv *priv = netdev_priv(dev);
 irqreturn_t ret = IRQ_NONE;
 u32 val;


 val = nb8800_readl(priv, NB8800_TXC_SR);
 if (val) {
  nb8800_writel(priv, NB8800_TXC_SR, val);

  if (val & TSR_DI)
   nb8800_tx_dma_start_irq(dev);

  if (val & TSR_TI)
   napi_schedule_irqoff(&priv->napi);

  if (unlikely(val & TSR_DE))
   netdev_err(dev, "TX DMA error\n");


  if (unlikely(val & TSR_TO))
   netdev_err(dev, "TX Status FIFO overflow\n");

  ret = IRQ_HANDLED;
 }


 val = nb8800_readl(priv, NB8800_RXC_SR);
 if (val) {
  nb8800_writel(priv, NB8800_RXC_SR, val);

  if (likely(val & (RSR_RI | RSR_DI))) {
   nb8800_writel(priv, NB8800_RX_ITR, priv->rx_itr_poll);
   napi_schedule_irqoff(&priv->napi);
  }

  if (unlikely(val & RSR_DE))
   netdev_err(dev, "RX DMA error\n");


  if (unlikely(val & RSR_RO))
   netdev_err(dev, "RX Status FIFO overflow\n");

  ret = IRQ_HANDLED;
 }

 return ret;
}
