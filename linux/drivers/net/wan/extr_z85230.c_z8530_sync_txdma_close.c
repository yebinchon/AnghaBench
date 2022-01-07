
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct z8530_channel {int* regs; int lock; int ** tx_dma_buf; scalar_t__ tx_dma_used; scalar_t__ txdma_on; int txdma; scalar_t__ sync; scalar_t__ max; int * irqs; } ;
struct net_device {int dummy; } ;


 int DTRREQ ;
 int INT_ALL_Rx ;
 int INT_ERR_Rx ;
 int R0 ;
 size_t R1 ;
 size_t R14 ;
 size_t R3 ;
 int WT_FN_RDYFN ;
 int WT_RDY_ENAB ;
 int WT_RDY_RT ;
 unsigned long claim_dma_lock () ;
 int clear_dma_ff (int ) ;
 int disable_dma (int ) ;
 int free_page (unsigned long) ;
 int read_zsreg (struct z8530_channel*,int ) ;
 int release_dma_lock (unsigned long) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int write_zsreg (struct z8530_channel*,size_t,int) ;
 int z8530_nop ;
 int z8530_rtsdtr (struct z8530_channel*,int ) ;

int z8530_sync_txdma_close(struct net_device *dev, struct z8530_channel *c)
{
 unsigned long dflags, cflags;
 u8 chk;


 spin_lock_irqsave(c->lock, cflags);

 c->irqs = &z8530_nop;
 c->max = 0;
 c->sync = 0;





 dflags = claim_dma_lock();

 disable_dma(c->txdma);
 clear_dma_ff(c->txdma);
 c->txdma_on = 0;
 c->tx_dma_used = 0;

 release_dma_lock(dflags);





 c->regs[R1]&= ~WT_RDY_ENAB;
 write_zsreg(c, R1, c->regs[R1]);
 c->regs[R1]&= ~(WT_RDY_RT|WT_FN_RDYFN|INT_ERR_Rx);
 c->regs[R1]|= INT_ALL_Rx;
 write_zsreg(c, R1, c->regs[R1]);
 c->regs[R14]&= ~DTRREQ;
 write_zsreg(c, R14, c->regs[R14]);

 if(c->tx_dma_buf[0])
 {
  free_page((unsigned long)c->tx_dma_buf[0]);
  c->tx_dma_buf[0]=((void*)0);
 }
 chk=read_zsreg(c,R0);
 write_zsreg(c, R3, c->regs[R3]);
 z8530_rtsdtr(c,0);

 spin_unlock_irqrestore(c->lock, cflags);
 return 0;
}
