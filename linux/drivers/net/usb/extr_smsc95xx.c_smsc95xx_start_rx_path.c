
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {scalar_t__* data; } ;
struct smsc95xx_priv {int mac_cr; int mac_cr_lock; } ;


 int MAC_CR ;
 int MAC_CR_RXEN_ ;
 int __smsc95xx_write_reg (struct usbnet*,int ,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int smsc95xx_start_rx_path(struct usbnet *dev, int in_pm)
{
 struct smsc95xx_priv *pdata = (struct smsc95xx_priv *)(dev->data[0]);
 unsigned long flags;

 spin_lock_irqsave(&pdata->mac_cr_lock, flags);
 pdata->mac_cr |= MAC_CR_RXEN_;
 spin_unlock_irqrestore(&pdata->mac_cr_lock, flags);

 return __smsc95xx_write_reg(dev, MAC_CR, pdata->mac_cr, in_pm);
}
