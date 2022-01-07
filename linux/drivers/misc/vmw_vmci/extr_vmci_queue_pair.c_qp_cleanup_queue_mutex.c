
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmci_queue {TYPE_1__* kernel_if; } ;
struct TYPE_2__ {int * mutex; scalar_t__ host; } ;



__attribute__((used)) static void qp_cleanup_queue_mutex(struct vmci_queue *produce_q,
       struct vmci_queue *consume_q)
{
 if (produce_q->kernel_if->host) {
  produce_q->kernel_if->mutex = ((void*)0);
  consume_q->kernel_if->mutex = ((void*)0);
 }
}
