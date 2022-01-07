
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xpc_fifo_head_uv {scalar_t__ n_entries; int lock; int * last; int * first; } ;


 int spin_lock_init (int *) ;

__attribute__((used)) static void
xpc_init_fifo_uv(struct xpc_fifo_head_uv *head)
{
 head->first = ((void*)0);
 head->last = ((void*)0);
 spin_lock_init(&head->lock);
 head->n_entries = 0;
}
