
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct service_processor {int event_buffer; } ;


 int kfree (int ) ;

void ibmasm_event_buffer_exit(struct service_processor *sp)
{
 kfree(sp->event_buffer);
}
