
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucb1x00 {unsigned int io_dir; int io_lock; } ;


 int UCB_IO_DIR ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int ucb1x00_reg_write (struct ucb1x00*,int ,unsigned int) ;

void ucb1x00_io_set_dir(struct ucb1x00 *ucb, unsigned int in, unsigned int out)
{
 unsigned long flags;

 spin_lock_irqsave(&ucb->io_lock, flags);
 ucb->io_dir |= out;
 ucb->io_dir &= ~in;

 ucb1x00_reg_write(ucb, UCB_IO_DIR, ucb->io_dir);
 spin_unlock_irqrestore(&ucb->io_lock, flags);
}
