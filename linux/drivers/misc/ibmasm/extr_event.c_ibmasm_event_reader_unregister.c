
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct service_processor {int lock; } ;
struct event_reader {int node; } ;


 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ibmasm_event_reader_unregister(struct service_processor *sp, struct event_reader *reader)
{
 unsigned long flags;

 spin_lock_irqsave(&sp->lock, flags);
 list_del(&reader->node);
 spin_unlock_irqrestore(&sp->lock, flags);
}
