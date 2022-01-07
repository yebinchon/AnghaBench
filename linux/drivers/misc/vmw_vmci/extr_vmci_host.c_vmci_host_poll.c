
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmci_host_dev {scalar_t__ ct_type; struct vmci_ctx* context; } ;
struct TYPE_2__ {int wait_queue; } ;
struct vmci_ctx {scalar_t__ pending_datagrams; int lock; int pending_doorbell_array; TYPE_1__ host_context; } ;
struct file {struct vmci_host_dev* private_data; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int EPOLLIN ;
 scalar_t__ VMCIOBJ_CONTEXT ;
 int poll_wait (struct file*,int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ vmci_handle_arr_get_size (int ) ;

__attribute__((used)) static __poll_t vmci_host_poll(struct file *filp, poll_table *wait)
{
 struct vmci_host_dev *vmci_host_dev = filp->private_data;
 struct vmci_ctx *context = vmci_host_dev->context;
 __poll_t mask = 0;

 if (vmci_host_dev->ct_type == VMCIOBJ_CONTEXT) {

  if (wait)
   poll_wait(filp, &context->host_context.wait_queue,
      wait);

  spin_lock(&context->lock);
  if (context->pending_datagrams > 0 ||
      vmci_handle_arr_get_size(
    context->pending_doorbell_array) > 0) {
   mask = EPOLLIN;
  }
  spin_unlock(&context->lock);
 }
 return mask;
}
