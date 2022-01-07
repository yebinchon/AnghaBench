
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct vmci_queue {TYPE_1__* kernel_if; } ;
struct vmci_qp_page_store {scalar_t__ pages; } ;
struct TYPE_2__ {int num_pages; } ;


 int PAGE_SIZE ;
 int qp_host_get_user_memory (scalar_t__,scalar_t__,struct vmci_queue*,struct vmci_queue*) ;

__attribute__((used)) static int qp_host_register_user_memory(struct vmci_qp_page_store *page_store,
     struct vmci_queue *produce_q,
     struct vmci_queue *consume_q)
{
 u64 produce_uva;
 u64 consume_uva;






 produce_uva = page_store->pages;
 consume_uva = page_store->pages +
     produce_q->kernel_if->num_pages * PAGE_SIZE;
 return qp_host_get_user_memory(produce_uva, consume_uva, produce_q,
           consume_q);
}
