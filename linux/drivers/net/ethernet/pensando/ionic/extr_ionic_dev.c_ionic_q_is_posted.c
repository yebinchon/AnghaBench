
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ionic_queue {int num_descs; TYPE_2__* head; TYPE_1__* tail; } ;
struct TYPE_4__ {unsigned int index; } ;
struct TYPE_3__ {unsigned int index; } ;



__attribute__((used)) static bool ionic_q_is_posted(struct ionic_queue *q, unsigned int pos)
{
 unsigned int mask, tail, head;

 mask = q->num_descs - 1;
 tail = q->tail->index;
 head = q->head->index;

 return ((pos - tail) & mask) < ((head - tail) & mask);
}
