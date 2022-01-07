
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct z8530_channel {int* regs; int mtu; int sync; int lock; int status; scalar_t__ count; scalar_t__ max; int * tx_next_skb; int * tx_skb; int * skb; int rx_function; } ;


 int R0 ;
 size_t R15 ;
 size_t R3 ;
 int RxENABLE ;
 int read_zsreg (struct z8530_channel*,int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int write_zsreg (struct z8530_channel*,size_t,int) ;
 int z8530_null_rx ;

int z8530_channel_load(struct z8530_channel *c, u8 *rtable)
{
 unsigned long flags;

 spin_lock_irqsave(c->lock, flags);

 while(*rtable!=255)
 {
  int reg=*rtable++;
  if(reg>0x0F)
   write_zsreg(c, R15, c->regs[15]|1);
  write_zsreg(c, reg&0x0F, *rtable);
  if(reg>0x0F)
   write_zsreg(c, R15, c->regs[15]&~1);
  c->regs[reg]=*rtable++;
 }
 c->rx_function=z8530_null_rx;
 c->skb=((void*)0);
 c->tx_skb=((void*)0);
 c->tx_next_skb=((void*)0);
 c->mtu=1500;
 c->max=0;
 c->count=0;
 c->status=read_zsreg(c, R0);
 c->sync=1;
 write_zsreg(c, R3, c->regs[R3]|RxENABLE);

 spin_unlock_irqrestore(c->lock, flags);
 return 0;
}
