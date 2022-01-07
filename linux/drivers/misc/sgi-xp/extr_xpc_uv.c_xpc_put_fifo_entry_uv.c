
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xpc_fifo_head_uv {int lock; int n_entries; struct xpc_fifo_entry_uv* last; struct xpc_fifo_entry_uv* first; } ;
struct xpc_fifo_entry_uv {struct xpc_fifo_entry_uv* next; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
xpc_put_fifo_entry_uv(struct xpc_fifo_head_uv *head,
        struct xpc_fifo_entry_uv *last)
{
 unsigned long irq_flags;

 last->next = ((void*)0);
 spin_lock_irqsave(&head->lock, irq_flags);
 if (head->last != ((void*)0))
  head->last->next = last;
 else
  head->first = last;
 head->last = last;
 head->n_entries++;
 spin_unlock_irqrestore(&head->lock, irq_flags);
}
