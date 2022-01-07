
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cosa_data {int lock; int dma; scalar_t__ rxtx; int name; } ;


 int RXBIT ;
 int TXBIT ;
 unsigned long claim_dma_lock () ;
 int clear_dma_ff (int ) ;
 int cosa_getdata8 (struct cosa_data*) ;
 int cosa_putdata8 (struct cosa_data*,int ) ;
 int cosa_putstatus (struct cosa_data*,int ) ;
 int disable_dma (int ) ;
 int pr_info (char*,int ,char*) ;
 int put_driver_status_nolock (struct cosa_data*) ;
 int release_dma_lock (unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,scalar_t__*) ;
 int udelay (int) ;

__attribute__((used)) static void cosa_kick(struct cosa_data *cosa)
{
 unsigned long flags, flags1;
 char *s = "(probably) IRQ";

 if (test_bit(RXBIT, &cosa->rxtx))
  s = "RX DMA";
 if (test_bit(TXBIT, &cosa->rxtx))
  s = "TX DMA";

 pr_info("%s: %s timeout - restarting\n", cosa->name, s);
 spin_lock_irqsave(&cosa->lock, flags);
 cosa->rxtx = 0;

 flags1 = claim_dma_lock();
 disable_dma(cosa->dma);
 clear_dma_ff(cosa->dma);
 release_dma_lock(flags1);


 udelay(100);
 cosa_putstatus(cosa, 0);
 udelay(100);
 (void) cosa_getdata8(cosa);
 udelay(100);
 cosa_putdata8(cosa, 0);
 udelay(100);
 put_driver_status_nolock(cosa);
 spin_unlock_irqrestore(&cosa->lock, flags);
}
