
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct cpmac_priv {int regs; int napi; } ;
typedef int irqreturn_t ;


 int CPMAC_MAC_EOI_VECTOR ;
 int CPMAC_MAC_INT_VECTOR ;
 int CPMAC_RX_INT_CLEAR ;
 int IRQ_HANDLED ;
 int MAC_INT_HOST ;
 int MAC_INT_RX ;
 int MAC_INT_STATUS ;
 int MAC_INT_TX ;
 int __napi_schedule (int *) ;
 int cpmac_check_status (struct net_device*) ;
 int cpmac_end_xmit (struct net_device*,int) ;
 int cpmac_read (int ,int ) ;
 int cpmac_write (int ,int ,int) ;
 scalar_t__ napi_schedule_prep (int *) ;
 int netdev_dbg (struct net_device*,char*,int) ;
 struct cpmac_priv* netdev_priv (struct net_device*) ;
 int netif_msg_intr (struct cpmac_priv*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t cpmac_irq(int irq, void *dev_id)
{
 struct net_device *dev = dev_id;
 struct cpmac_priv *priv;
 int queue;
 u32 status;

 priv = netdev_priv(dev);

 status = cpmac_read(priv->regs, CPMAC_MAC_INT_VECTOR);

 if (unlikely(netif_msg_intr(priv)))
  netdev_dbg(dev, "interrupt status: 0x%08x\n", status);

 if (status & MAC_INT_TX)
  cpmac_end_xmit(dev, (status & 7));

 if (status & MAC_INT_RX) {
  queue = (status >> 8) & 7;
  if (napi_schedule_prep(&priv->napi)) {
   cpmac_write(priv->regs, CPMAC_RX_INT_CLEAR, 1 << queue);
   __napi_schedule(&priv->napi);
  }
 }

 cpmac_write(priv->regs, CPMAC_MAC_EOI_VECTOR, 0);

 if (unlikely(status & (MAC_INT_HOST | MAC_INT_STATUS)))
  cpmac_check_status(dev);

 return IRQ_HANDLED;
}
