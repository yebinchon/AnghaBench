
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ilo_hwinfo {int fifo_lock; } ;
struct fifo {int* fifobar; int tail; int imask; int merge; } ;


 int ENTRY_MASK_NOSTATE ;
 int ENTRY_MASK_O ;
 struct fifo* FIFOBARTOHANDLE (char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int fifo_enqueue(struct ilo_hwinfo *hw, char *fifobar, int entry)
{
 struct fifo *fifo_q = FIFOBARTOHANDLE(fifobar);
 unsigned long flags;
 int ret = 0;

 spin_lock_irqsave(&hw->fifo_lock, flags);
 if (!(fifo_q->fifobar[(fifo_q->tail + 1) & fifo_q->imask]
       & ENTRY_MASK_O)) {
  fifo_q->fifobar[fifo_q->tail & fifo_q->imask] |=
    (entry & ENTRY_MASK_NOSTATE) | fifo_q->merge;
  fifo_q->tail += 1;
  ret = 1;
 }
 spin_unlock_irqrestore(&hw->fifo_lock, flags);

 return ret;
}
