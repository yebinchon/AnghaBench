
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ expires; int function; } ;
struct scc_channel {int lock; int ctrl; TYPE_1__ tx_wdog; int dev; } ;


 int HZ ;
 int Outb (int ,int ) ;
 int R6 ;
 int R7 ;
 int RES_EXT_INT ;
 int TX_ON ;
 int add_timer (TYPE_1__*) ;
 int del_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 int netif_stop_queue (int ) ;
 int scc_discard_buffers (struct scc_channel*) ;
 int scc_key_trx (struct scc_channel*,int ) ;
 int scc_stop_calibrate ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wr (struct scc_channel*,int ,unsigned char) ;

__attribute__((used)) static void
scc_start_calibrate(struct scc_channel *scc, int duration, unsigned char pattern)
{
 unsigned long flags;

 spin_lock_irqsave(&scc->lock, flags);
 netif_stop_queue(scc->dev);
 scc_discard_buffers(scc);

 del_timer(&scc->tx_wdog);

 scc->tx_wdog.function = scc_stop_calibrate;
 scc->tx_wdog.expires = jiffies + HZ*duration;
 add_timer(&scc->tx_wdog);


 wr(scc, R6, 0);
 wr(scc, R7, pattern);






 Outb(scc->ctrl,RES_EXT_INT);
 Outb(scc->ctrl,RES_EXT_INT);

 scc_key_trx(scc, TX_ON);
 spin_unlock_irqrestore(&scc->lock, flags);
}
