
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct smsc911x_data {int dev_lock; TYPE_1__ config; scalar_t__ ioaddr; } ;


 int BUG () ;
 scalar_t__ RX_DATA_FIFO ;
 int SMSC911X_SWAP_FIFO ;
 int SMSC911X_USE_16BIT ;
 int SMSC911X_USE_32BIT ;
 int __smsc911x_reg_read (struct smsc911x_data*,scalar_t__) ;
 int ioread32_rep (scalar_t__,unsigned int*,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int swab32 (int ) ;

__attribute__((used)) static inline void
smsc911x_rx_readfifo(struct smsc911x_data *pdata, unsigned int *buf,
       unsigned int wordcount)
{
 unsigned long flags;

 spin_lock_irqsave(&pdata->dev_lock, flags);

 if (pdata->config.flags & SMSC911X_SWAP_FIFO) {
  while (wordcount--)
   *buf++ = swab32(__smsc911x_reg_read(pdata,
           RX_DATA_FIFO));
  goto out;
 }

 if (pdata->config.flags & SMSC911X_USE_32BIT) {
  ioread32_rep(pdata->ioaddr + RX_DATA_FIFO, buf, wordcount);
  goto out;
 }

 if (pdata->config.flags & SMSC911X_USE_16BIT) {
  while (wordcount--)
   *buf++ = __smsc911x_reg_read(pdata, RX_DATA_FIFO);
  goto out;
 }

 BUG();
out:
 spin_unlock_irqrestore(&pdata->dev_lock, flags);
}
