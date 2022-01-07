
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u64 ;
struct TYPE_5__ {int * page; } ;
struct TYPE_4__ {void** vas; } ;
struct TYPE_6__ {TYPE_2__ h; TYPE_1__ g; } ;
struct vmci_queue_kern_if {TYPE_3__ u; scalar_t__ host; } ;
struct vmci_queue {struct vmci_queue_kern_if* kernel_if; } ;
struct iov_iter {int dummy; } ;


 size_t PAGE_SIZE ;
 int VMCI_ERROR_INVALID_ARGS ;
 int VMCI_SUCCESS ;
 int copy_to_iter (int *,size_t,struct iov_iter*) ;
 void* kmap (int ) ;
 int kunmap (int ) ;

__attribute__((used)) static int qp_memcpy_from_queue_iter(struct iov_iter *to,
        const struct vmci_queue *queue,
        u64 queue_offset, size_t size)
{
 struct vmci_queue_kern_if *kernel_if = queue->kernel_if;
 size_t bytes_copied = 0;

 while (bytes_copied < size) {
  const u64 page_index =
   (queue_offset + bytes_copied) / PAGE_SIZE;
  const size_t page_offset =
      (queue_offset + bytes_copied) & (PAGE_SIZE - 1);
  void *va;
  size_t to_copy;
  int err;

  if (kernel_if->host)
   va = kmap(kernel_if->u.h.page[page_index]);
  else
   va = kernel_if->u.g.vas[page_index + 1];


  if (size - bytes_copied > PAGE_SIZE - page_offset)

   to_copy = PAGE_SIZE - page_offset;
  else
   to_copy = size - bytes_copied;

  err = copy_to_iter((u8 *)va + page_offset, to_copy, to);
  if (err != to_copy) {
   if (kernel_if->host)
    kunmap(kernel_if->u.h.page[page_index]);
   return VMCI_ERROR_INVALID_ARGS;
  }
  bytes_copied += to_copy;
  if (kernel_if->host)
   kunmap(kernel_if->u.h.page[page_index]);
 }

 return VMCI_SUCCESS;
}
