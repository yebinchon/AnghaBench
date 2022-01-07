
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u64 ;
struct TYPE_3__ {struct page** header_page; struct page** page; } ;
struct TYPE_4__ {TYPE_1__ h; } ;
struct vmci_queue_kern_if {int host; TYPE_2__ u; scalar_t__ num_pages; int * mutex; } ;
struct vmci_queue {struct vmci_queue_kern_if* kernel_if; int * saved_header; int * q_header; } ;
struct page {int dummy; } ;


 scalar_t__ DIV_ROUND_UP (scalar_t__,scalar_t__) ;
 int GFP_KERNEL ;
 scalar_t__ PAGE_SIZE ;
 size_t const SIZE_MAX ;
 struct vmci_queue* kzalloc (size_t const,int ) ;

__attribute__((used)) static struct vmci_queue *qp_host_alloc_queue(u64 size)
{
 struct vmci_queue *queue;
 size_t queue_page_size;
 u64 num_pages;
 const size_t queue_size = sizeof(*queue) + sizeof(*(queue->kernel_if));

 if (size > SIZE_MAX - PAGE_SIZE)
  return ((void*)0);
 num_pages = DIV_ROUND_UP(size, PAGE_SIZE) + 1;
 if (num_pages > (SIZE_MAX - queue_size) /
   sizeof(*queue->kernel_if->u.h.page))
  return ((void*)0);

 queue_page_size = num_pages * sizeof(*queue->kernel_if->u.h.page);

 queue = kzalloc(queue_size + queue_page_size, GFP_KERNEL);
 if (queue) {
  queue->q_header = ((void*)0);
  queue->saved_header = ((void*)0);
  queue->kernel_if = (struct vmci_queue_kern_if *)(queue + 1);
  queue->kernel_if->host = 1;
  queue->kernel_if->mutex = ((void*)0);
  queue->kernel_if->num_pages = num_pages;
  queue->kernel_if->u.h.header_page =
      (struct page **)((u8 *)queue + queue_size);
  queue->kernel_if->u.h.page =
   &queue->kernel_if->u.h.header_page[1];
 }

 return queue;
}
