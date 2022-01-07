
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vmci_queue {int dummy; } ;


 int kfree (struct vmci_queue*) ;

__attribute__((used)) static void qp_host_free_queue(struct vmci_queue *queue, u64 queue_size)
{
 kfree(queue);
}
