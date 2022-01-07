
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wbcir_data {int irqmask; int spinlock; int txstate; scalar_t__ sbase; int dev; int rxstate; } ;
struct pnp_dev {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int WBCIR_BANK_0 ;
 int WBCIR_IRQ_ERR ;
 int WBCIR_IRQ_RX ;
 int WBCIR_IRQ_TX_EMPTY ;
 int WBCIR_IRQ_TX_LOW ;
 scalar_t__ WBCIR_REG_SP3_ASCR ;
 scalar_t__ WBCIR_REG_SP3_EIR ;
 scalar_t__ WBCIR_REG_SP3_LSR ;
 int WBCIR_RXSTATE_ERROR ;
 int WBCIR_RX_OVERRUN ;
 int WBCIR_TXSTATE_ERROR ;
 int WBCIR_TX_UNDERRUN ;
 int inb (scalar_t__) ;
 int ir_raw_event_reset (int ) ;
 struct wbcir_data* pnp_get_drvdata (struct pnp_dev*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wbcir_irq_rx (struct wbcir_data*,struct pnp_dev*) ;
 int wbcir_irq_tx (struct wbcir_data*) ;
 int wbcir_select_bank (struct wbcir_data*,int ) ;

__attribute__((used)) static irqreturn_t
wbcir_irq_handler(int irqno, void *cookie)
{
 struct pnp_dev *device = cookie;
 struct wbcir_data *data = pnp_get_drvdata(device);
 unsigned long flags;
 u8 status;

 spin_lock_irqsave(&data->spinlock, flags);
 wbcir_select_bank(data, WBCIR_BANK_0);
 status = inb(data->sbase + WBCIR_REG_SP3_EIR);
 status &= data->irqmask;

 if (!status) {
  spin_unlock_irqrestore(&data->spinlock, flags);
  return IRQ_NONE;
 }

 if (status & WBCIR_IRQ_ERR) {

  if (inb(data->sbase + WBCIR_REG_SP3_LSR) & WBCIR_RX_OVERRUN) {
   data->rxstate = WBCIR_RXSTATE_ERROR;
   ir_raw_event_reset(data->dev);
  }


  if (inb(data->sbase + WBCIR_REG_SP3_ASCR) & WBCIR_TX_UNDERRUN)
   data->txstate = WBCIR_TXSTATE_ERROR;
 }

 if (status & WBCIR_IRQ_RX)
  wbcir_irq_rx(data, device);

 if (status & (WBCIR_IRQ_TX_LOW | WBCIR_IRQ_TX_EMPTY))
  wbcir_irq_tx(data);

 spin_unlock_irqrestore(&data->spinlock, flags);
 return IRQ_HANDLED;
}
