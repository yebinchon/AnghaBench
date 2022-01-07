
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct moxart_mac_priv_t {int napi; scalar_t__ base; int reg_imr; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ REG_INTERRUPT_MASK ;
 scalar_t__ REG_INTERRUPT_STATUS ;
 unsigned int RPKT_FINISH ;
 int RPKT_FINISH_M ;
 unsigned int XPKT_OK_INT_STS ;
 int __napi_schedule (int *) ;
 int moxart_tx_finished (struct net_device*) ;
 scalar_t__ napi_schedule_prep (int *) ;
 struct moxart_mac_priv_t* netdev_priv (struct net_device*) ;
 unsigned int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t moxart_mac_interrupt(int irq, void *dev_id)
{
 struct net_device *ndev = (struct net_device *)dev_id;
 struct moxart_mac_priv_t *priv = netdev_priv(ndev);
 unsigned int ists = readl(priv->base + REG_INTERRUPT_STATUS);

 if (ists & XPKT_OK_INT_STS)
  moxart_tx_finished(ndev);

 if (ists & RPKT_FINISH) {
  if (napi_schedule_prep(&priv->napi)) {
   priv->reg_imr &= ~RPKT_FINISH_M;
   writel(priv->reg_imr, priv->base + REG_INTERRUPT_MASK);
   __napi_schedule(&priv->napi);
  }
 }

 return IRQ_HANDLED;
}
