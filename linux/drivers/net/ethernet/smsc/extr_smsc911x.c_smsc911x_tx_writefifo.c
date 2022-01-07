
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct smsc911x_data {int dev_lock; TYPE_1__ config; scalar_t__ ioaddr; } ;


 int BUG () ;
 int SMSC911X_SWAP_FIFO ;
 int SMSC911X_USE_16BIT ;
 int SMSC911X_USE_32BIT ;
 scalar_t__ TX_DATA_FIFO ;
 int __smsc911x_reg_write (struct smsc911x_data*,scalar_t__,int ) ;
 int iowrite32_rep (scalar_t__,unsigned int*,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int swab32 (int ) ;

__attribute__((used)) static inline void
smsc911x_tx_writefifo(struct smsc911x_data *pdata, unsigned int *buf,
        unsigned int wordcount)
{
 unsigned long flags;

 spin_lock_irqsave(&pdata->dev_lock, flags);

 if (pdata->config.flags & SMSC911X_SWAP_FIFO) {
  while (wordcount--)
   __smsc911x_reg_write(pdata, TX_DATA_FIFO,
          swab32(*buf++));
  goto out;
 }

 if (pdata->config.flags & SMSC911X_USE_32BIT) {
  iowrite32_rep(pdata->ioaddr + TX_DATA_FIFO, buf, wordcount);
  goto out;
 }

 if (pdata->config.flags & SMSC911X_USE_16BIT) {
  while (wordcount--)
   __smsc911x_reg_write(pdata, TX_DATA_FIFO, *buf++);
  goto out;
 }

 BUG();
out:
 spin_unlock_irqrestore(&pdata->dev_lock, flags);
}
