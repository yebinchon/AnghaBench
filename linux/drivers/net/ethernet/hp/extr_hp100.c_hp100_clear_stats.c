
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hp100_private {int lock; } ;
struct TYPE_2__ {int name; } ;


 int ABORT ;
 int CRC ;
 int DROPPED ;
 int MAC_CTRL ;
 int PERFORMANCE ;
 int TRACE ;
 TYPE_1__* dev ;
 int hp100_inb (int ) ;
 int hp100_inw (int ) ;
 int hp100_outw (int,int ) ;
 int hp100_page (int ) ;
 int printk (char*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void hp100_clear_stats(struct hp100_private *lp, int ioaddr)
{
 unsigned long flags;






 spin_lock_irqsave(&lp->lock, flags);
 hp100_page(MAC_CTRL);
 hp100_inw(DROPPED);
 hp100_inb(CRC);
 hp100_inb(ABORT);
 hp100_page(PERFORMANCE);
 spin_unlock_irqrestore(&lp->lock, flags);
}
