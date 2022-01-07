
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xcan_priv {int (* read_reg ) (struct xcan_priv*,int ) ;int napi; int (* write_reg ) (struct xcan_priv*,int ,int) ;} ;
struct net_device {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int XCAN_ICR_OFFSET ;
 int XCAN_IER_OFFSET ;
 int XCAN_ISR_OFFSET ;
 int XCAN_IXR_ARBLST_MASK ;
 int XCAN_IXR_BSOFF_MASK ;
 int XCAN_IXR_ERROR_MASK ;
 int XCAN_IXR_RXMNF_MASK ;
 int XCAN_IXR_RXOFLW_MASK ;
 int XCAN_IXR_SLP_MASK ;
 int XCAN_IXR_TXOK_MASK ;
 int XCAN_IXR_WKUP_MASK ;
 int napi_schedule (int *) ;
 struct xcan_priv* netdev_priv (struct net_device*) ;
 int stub1 (struct xcan_priv*,int ) ;
 int stub2 (struct xcan_priv*,int ,int) ;
 int stub3 (struct xcan_priv*,int ,int) ;
 int stub4 (struct xcan_priv*,int ) ;
 int stub5 (struct xcan_priv*,int ,int) ;
 int xcan_err_interrupt (struct net_device*,int) ;
 int xcan_rx_int_mask (struct xcan_priv*) ;
 int xcan_state_interrupt (struct net_device*,int) ;
 int xcan_tx_interrupt (struct net_device*,int) ;

__attribute__((used)) static irqreturn_t xcan_interrupt(int irq, void *dev_id)
{
 struct net_device *ndev = (struct net_device *)dev_id;
 struct xcan_priv *priv = netdev_priv(ndev);
 u32 isr, ier;
 u32 isr_errors;
 u32 rx_int_mask = xcan_rx_int_mask(priv);


 isr = priv->read_reg(priv, XCAN_ISR_OFFSET);
 if (!isr)
  return IRQ_NONE;


 if (isr & (XCAN_IXR_SLP_MASK | XCAN_IXR_WKUP_MASK)) {
  priv->write_reg(priv, XCAN_ICR_OFFSET, (XCAN_IXR_SLP_MASK |
    XCAN_IXR_WKUP_MASK));
  xcan_state_interrupt(ndev, isr);
 }


 if (isr & XCAN_IXR_TXOK_MASK)
  xcan_tx_interrupt(ndev, isr);


 isr_errors = isr & (XCAN_IXR_ERROR_MASK | XCAN_IXR_RXOFLW_MASK |
       XCAN_IXR_BSOFF_MASK | XCAN_IXR_ARBLST_MASK |
       XCAN_IXR_RXMNF_MASK);
 if (isr_errors) {
  priv->write_reg(priv, XCAN_ICR_OFFSET, isr_errors);
  xcan_err_interrupt(ndev, isr);
 }


 if (isr & rx_int_mask) {
  ier = priv->read_reg(priv, XCAN_IER_OFFSET);
  ier &= ~rx_int_mask;
  priv->write_reg(priv, XCAN_IER_OFFSET, ier);
  napi_schedule(&priv->napi);
 }
 return IRQ_HANDLED;
}
