
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmci_queue {TYPE_1__* kernel_if; } ;
struct TYPE_2__ {int * mutex; int __mutex; scalar_t__ host; } ;


 int mutex_init (int *) ;

__attribute__((used)) static void qp_init_queue_mutex(struct vmci_queue *produce_q,
    struct vmci_queue *consume_q)
{





 if (produce_q->kernel_if->host) {
  produce_q->kernel_if->mutex = &produce_q->kernel_if->__mutex;
  consume_q->kernel_if->mutex = &produce_q->kernel_if->__mutex;
  mutex_init(produce_q->kernel_if->mutex);
 }
}
