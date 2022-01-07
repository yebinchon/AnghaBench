
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z8530_channel {int sync; int* regs; int lock; scalar_t__ dma_tx; int * irqs; int * skb2; int * skb; scalar_t__ count; scalar_t__ mtu; } ;
struct net_device {scalar_t__ mtu; } ;


 size_t R1 ;
 size_t R3 ;
 int RxENABLE ;
 int TxINT_ENAB ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int write_zsreg (struct z8530_channel*,size_t,int) ;
 int z8530_rtsdtr (struct z8530_channel*,int) ;
 int z8530_rx_done (struct z8530_channel*) ;
 int z8530_sync ;

int z8530_sync_open(struct net_device *dev, struct z8530_channel *c)
{
 unsigned long flags;

 spin_lock_irqsave(c->lock, flags);

 c->sync = 1;
 c->mtu = dev->mtu+64;
 c->count = 0;
 c->skb = ((void*)0);
 c->skb2 = ((void*)0);
 c->irqs = &z8530_sync;


 z8530_rx_done(c);
 z8530_rx_done(c);
 z8530_rtsdtr(c,1);
 c->dma_tx = 0;
 c->regs[R1]|=TxINT_ENAB;
 write_zsreg(c, R1, c->regs[R1]);
 write_zsreg(c, R3, c->regs[R3]|RxENABLE);

 spin_unlock_irqrestore(c->lock, flags);
 return 0;
}
