
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct netsec_priv {int napi; int reglock; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int NETSEC_IRQ_RX ;
 int NETSEC_IRQ_TX ;
 int NETSEC_REG_INTEN_CLR ;
 int NETSEC_REG_NRM_RX_STATUS ;
 int NETSEC_REG_NRM_TX_STATUS ;
 int NETSEC_REG_TOP_STATUS ;
 int napi_schedule (int *) ;
 int netsec_read (struct netsec_priv*,int ) ;
 int netsec_write (struct netsec_priv*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t netsec_irq_handler(int irq, void *dev_id)
{
 struct netsec_priv *priv = dev_id;
 u32 val, status = netsec_read(priv, NETSEC_REG_TOP_STATUS);
 unsigned long flags;


 if (status & NETSEC_IRQ_TX) {
  val = netsec_read(priv, NETSEC_REG_NRM_TX_STATUS);
  netsec_write(priv, NETSEC_REG_NRM_TX_STATUS, val);
 }
 if (status & NETSEC_IRQ_RX) {
  val = netsec_read(priv, NETSEC_REG_NRM_RX_STATUS);
  netsec_write(priv, NETSEC_REG_NRM_RX_STATUS, val);
 }

 spin_lock_irqsave(&priv->reglock, flags);
 netsec_write(priv, NETSEC_REG_INTEN_CLR, NETSEC_IRQ_RX | NETSEC_IRQ_TX);
 spin_unlock_irqrestore(&priv->reglock, flags);

 napi_schedule(&priv->napi);

 return IRQ_HANDLED;
}
