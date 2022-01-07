
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct at91_priv {int reg_sr; int napi; } ;
typedef int irqreturn_t ;


 int AT91_IDR ;
 int AT91_IMR ;
 int AT91_IRQ_ERR_FRAME ;
 int AT91_SR ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int at91_irq_err (struct net_device*) ;
 int at91_irq_tx (struct net_device*,int) ;
 int at91_read (struct at91_priv*,int ) ;
 int at91_write (struct at91_priv*,int ,int) ;
 int get_irq_mb_rx (struct at91_priv*) ;
 int get_irq_mb_tx (struct at91_priv*) ;
 int napi_schedule (int *) ;
 struct at91_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static irqreturn_t at91_irq(int irq, void *dev_id)
{
 struct net_device *dev = dev_id;
 struct at91_priv *priv = netdev_priv(dev);
 irqreturn_t handled = IRQ_NONE;
 u32 reg_sr, reg_imr;

 reg_sr = at91_read(priv, AT91_SR);
 reg_imr = at91_read(priv, AT91_IMR);


 reg_sr &= reg_imr;
 if (!reg_sr)
  goto exit;

 handled = IRQ_HANDLED;


 if (reg_sr & (get_irq_mb_rx(priv) | AT91_IRQ_ERR_FRAME)) {




  priv->reg_sr = reg_sr;
  at91_write(priv, AT91_IDR,
      get_irq_mb_rx(priv) | AT91_IRQ_ERR_FRAME);
  napi_schedule(&priv->napi);
 }


 if (reg_sr & get_irq_mb_tx(priv))
  at91_irq_tx(dev, reg_sr);

 at91_irq_err(dev);

 exit:
 return handled;
}
