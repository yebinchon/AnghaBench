
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {scalar_t__* data; } ;
struct smsc95xx_priv {int mac_cr; int mac_cr_lock; } ;


 int MAC_CR ;
 int MAC_CR_TXEN_ ;
 int TX_CFG ;
 int TX_CFG_ON_ ;
 int smsc95xx_write_reg (struct usbnet*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int smsc95xx_start_tx_path(struct usbnet *dev)
{
 struct smsc95xx_priv *pdata = (struct smsc95xx_priv *)(dev->data[0]);
 unsigned long flags;
 int ret;


 spin_lock_irqsave(&pdata->mac_cr_lock, flags);
 pdata->mac_cr |= MAC_CR_TXEN_;
 spin_unlock_irqrestore(&pdata->mac_cr_lock, flags);

 ret = smsc95xx_write_reg(dev, MAC_CR, pdata->mac_cr);
 if (ret < 0)
  return ret;


 return smsc95xx_write_reg(dev, TX_CFG, TX_CFG_ON_);
}
