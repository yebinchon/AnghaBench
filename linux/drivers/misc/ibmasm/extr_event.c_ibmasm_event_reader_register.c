
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct service_processor {int lock; TYPE_1__* event_buffer; } ;
struct event_reader {int node; int wait; int next_serial_number; } ;
struct TYPE_2__ {int readers; int next_serial_number; } ;


 int init_waitqueue_head (int *) ;
 int list_add (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ibmasm_event_reader_register(struct service_processor *sp, struct event_reader *reader)
{
 unsigned long flags;

 reader->next_serial_number = sp->event_buffer->next_serial_number;
 init_waitqueue_head(&reader->wait);
 spin_lock_irqsave(&sp->lock, flags);
 list_add(&reader->node, &sp->event_buffer->readers);
 spin_unlock_irqrestore(&sp->lock, flags);
}
