
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmci_queue {TYPE_1__* kernel_if; } ;
struct TYPE_2__ {int mutex; scalar_t__ host; } ;


 int mutex_lock (int ) ;

__attribute__((used)) static void qp_acquire_queue_mutex(struct vmci_queue *queue)
{
 if (queue->kernel_if->host)
  mutex_lock(queue->kernel_if->mutex);
}
