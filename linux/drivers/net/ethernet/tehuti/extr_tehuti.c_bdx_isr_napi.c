
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct bdx_priv {int napi; } ;
typedef int irqreturn_t ;


 int ENTER ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int IR_EXTRA ;
 int IR_RUN ;
 int IR_RX_DESC_0 ;
 int IR_TX_FREE_0 ;
 int READ_REG (struct bdx_priv*,int ) ;
 int RET (int ) ;
 int __napi_schedule (int *) ;
 int bdx_enable_interrupts (struct bdx_priv*) ;
 int bdx_isr_extra (struct bdx_priv*,int) ;
 scalar_t__ likely (int ) ;
 int napi_schedule_prep (int *) ;
 struct bdx_priv* netdev_priv (struct net_device*) ;
 int regISR ;
 int regRXD_WPTR_0 ;
 int regTXF_WPTR_0 ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t bdx_isr_napi(int irq, void *dev)
{
 struct net_device *ndev = dev;
 struct bdx_priv *priv = netdev_priv(ndev);
 u32 isr;

 ENTER;
 isr = (READ_REG(priv, regISR) & IR_RUN);
 if (unlikely(!isr)) {
  bdx_enable_interrupts(priv);
  return IRQ_NONE;
 }

 if (isr & IR_EXTRA)
  bdx_isr_extra(priv, isr);

 if (isr & (IR_RX_DESC_0 | IR_TX_FREE_0)) {
  if (likely(napi_schedule_prep(&priv->napi))) {
   __napi_schedule(&priv->napi);
   RET(IRQ_HANDLED);
  } else {
   READ_REG(priv, regTXF_WPTR_0);
   READ_REG(priv, regRXD_WPTR_0);
  }
 }

 bdx_enable_interrupts(priv);
 RET(IRQ_HANDLED);
}
