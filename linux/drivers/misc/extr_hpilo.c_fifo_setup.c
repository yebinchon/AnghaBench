
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fifo {int nrents; int imask; scalar_t__* fifobar; int merge; scalar_t__ reset; scalar_t__ tail; scalar_t__ head; } ;


 int ENTRY_MASK_O ;

__attribute__((used)) static void fifo_setup(void *base_addr, int nr_entry)
{
 struct fifo *fifo_q = base_addr;
 int i;


 fifo_q->head = 0;
 fifo_q->tail = 0;
 fifo_q->reset = 0;
 fifo_q->nrents = nr_entry;
 fifo_q->imask = nr_entry - 1;
 fifo_q->merge = ENTRY_MASK_O;

 for (i = 0; i < nr_entry; i++)
  fifo_q->fifobar[i] = 0;
}
