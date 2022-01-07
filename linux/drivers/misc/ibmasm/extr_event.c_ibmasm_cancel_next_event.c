
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_reader {int cancelled; int wait; } ;


 int wake_up_interruptible (int *) ;

void ibmasm_cancel_next_event(struct event_reader *reader)
{
        reader->cancelled = 1;
        wake_up_interruptible(&reader->wait);
}
