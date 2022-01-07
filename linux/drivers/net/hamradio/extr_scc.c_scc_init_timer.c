
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_state; } ;
struct scc_channel {int lock; TYPE_1__ stat; } ;


 int TXS_IDLE ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void scc_init_timer(struct scc_channel *scc)
{
 unsigned long flags;

 spin_lock_irqsave(&scc->lock, flags);
 scc->stat.tx_state = TXS_IDLE;
 spin_unlock_irqrestore(&scc->lock, flags);
}
