
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cosa_data {int txchan; int rxsize; int* rxbuf; int* bouncebuf; int lock; scalar_t__ rxtx; int num; int rxbitmap; TYPE_1__* rxchan; int txbitmap; int txsize; struct channel_data* chan; int dma; } ;
struct channel_data {int num; scalar_t__ (* tx_done ) (struct channel_data*,int ) ;} ;
struct TYPE_3__ {int num; scalar_t__ (* rx_done ) (TYPE_1__*) ;} ;


 int RXBIT ;
 int TXBIT ;
 unsigned long claim_dma_lock () ;
 int clear_bit (int ,int *) ;
 int clear_dma_ff (int ) ;
 int cosa_dma_able (TYPE_1__*,int*,int) ;
 int disable_dma (int ) ;
 int memcpy (int*,int*,int) ;
 int pr_cont (char*,...) ;
 int pr_info (char*,int ,int ,int) ;
 int pr_notice (char*,int ) ;
 int put_driver_status_nolock (struct cosa_data*) ;
 int release_dma_lock (unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ stub1 (struct channel_data*,int ) ;
 scalar_t__ stub2 (TYPE_1__*) ;
 scalar_t__ test_bit (int ,scalar_t__*) ;

__attribute__((used)) static inline void eot_interrupt(struct cosa_data *cosa, int status)
{
 unsigned long flags, flags1;
 spin_lock_irqsave(&cosa->lock, flags);
 flags1 = claim_dma_lock();
 disable_dma(cosa->dma);
 clear_dma_ff(cosa->dma);
 release_dma_lock(flags1);
 if (test_bit(TXBIT, &cosa->rxtx)) {
  struct channel_data *chan = cosa->chan+cosa->txchan;
  if (chan->tx_done)
   if (chan->tx_done(chan, cosa->txsize))
    clear_bit(chan->num, &cosa->txbitmap);
 } else if (test_bit(RXBIT, &cosa->rxtx)) {
  if (cosa->rxbuf == cosa->bouncebuf)
   goto out;
  if (!cosa_dma_able(cosa->rxchan, cosa->rxbuf, cosa->rxsize))
   memcpy(cosa->rxbuf, cosa->bouncebuf, cosa->rxsize);
  if (cosa->rxchan->rx_done)
   if (cosa->rxchan->rx_done(cosa->rxchan))
    clear_bit(cosa->rxchan->num, &cosa->rxbitmap);
 } else {
  pr_notice("cosa%d: unexpected EOT interrupt\n", cosa->num);
 }






out:
 cosa->rxtx = 0;
 put_driver_status_nolock(cosa);
 spin_unlock_irqrestore(&cosa->lock, flags);
}
