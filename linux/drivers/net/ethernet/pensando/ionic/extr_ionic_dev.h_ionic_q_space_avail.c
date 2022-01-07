
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ionic_queue {TYPE_2__* head; TYPE_1__* tail; } ;
struct TYPE_4__ {unsigned int index; int left; } ;
struct TYPE_3__ {unsigned int index; } ;



__attribute__((used)) static inline unsigned int ionic_q_space_avail(struct ionic_queue *q)
{
 unsigned int avail = q->tail->index;

 if (q->head->index >= avail)
  avail += q->head->left - 1;
 else
  avail -= q->head->index + 1;

 return avail;
}
