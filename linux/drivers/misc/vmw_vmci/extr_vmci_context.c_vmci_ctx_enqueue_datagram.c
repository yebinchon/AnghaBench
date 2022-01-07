
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct vmci_handle {int dummy; } ;
struct vmci_datagram_queue_entry {size_t dg_size; int list_item; struct vmci_datagram* dg; } ;
struct vmci_datagram {struct vmci_handle src; } ;
struct TYPE_2__ {int wait_queue; } ;
struct vmci_ctx {scalar_t__ datagram_queue_size; int lock; TYPE_1__ host_context; int pending_datagrams; int datagram_queue; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int VMCI_CONTEXT_RESOURCE_ID ;
 size_t VMCI_DG_SIZE (struct vmci_datagram*) ;
 int VMCI_ERROR_INVALID_ARGS ;
 int VMCI_ERROR_NO_MEM ;
 int VMCI_ERROR_NO_RESOURCES ;
 int VMCI_HYPERVISOR_CONTEXT_ID ;
 scalar_t__ VMCI_MAX_DATAGRAM_AND_EVENT_QUEUE_SIZE ;
 scalar_t__ VMCI_MAX_DATAGRAM_QUEUE_SIZE ;
 size_t VMCI_MAX_DG_SIZE ;
 int ctx_signal_notify (struct vmci_ctx*) ;
 int kfree (struct vmci_datagram_queue_entry*) ;
 struct vmci_datagram_queue_entry* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 int pr_devel (char*,size_t) ;
 int pr_warn (char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct vmci_ctx* vmci_ctx_get (size_t) ;
 int vmci_ctx_put (struct vmci_ctx*) ;
 int vmci_handle_is_equal (struct vmci_handle,int ) ;
 int vmci_make_handle (int ,int ) ;
 int wake_up (int *) ;

int vmci_ctx_enqueue_datagram(u32 cid, struct vmci_datagram *dg)
{
 struct vmci_datagram_queue_entry *dq_entry;
 struct vmci_ctx *context;
 struct vmci_handle dg_src;
 size_t vmci_dg_size;

 vmci_dg_size = VMCI_DG_SIZE(dg);
 if (vmci_dg_size > VMCI_MAX_DG_SIZE) {
  pr_devel("Datagram too large (bytes=%zu)\n", vmci_dg_size);
  return VMCI_ERROR_INVALID_ARGS;
 }


 context = vmci_ctx_get(cid);
 if (!context) {
  pr_devel("Invalid context (ID=0x%x)\n", cid);
  return VMCI_ERROR_INVALID_ARGS;
 }


 dq_entry = kmalloc(sizeof(*dq_entry), GFP_KERNEL);
 if (dq_entry == ((void*)0)) {
  pr_warn("Failed to allocate memory for datagram\n");
  vmci_ctx_put(context);
  return VMCI_ERROR_NO_MEM;
 }
 dq_entry->dg = dg;
 dq_entry->dg_size = vmci_dg_size;
 dg_src = dg->src;
 INIT_LIST_HEAD(&dq_entry->list_item);

 spin_lock(&context->lock);
 if (context->datagram_queue_size + vmci_dg_size >=
     VMCI_MAX_DATAGRAM_QUEUE_SIZE &&
     (!vmci_handle_is_equal(dg_src,
    vmci_make_handle
    (VMCI_HYPERVISOR_CONTEXT_ID,
     VMCI_CONTEXT_RESOURCE_ID)) ||
      context->datagram_queue_size + vmci_dg_size >=
      VMCI_MAX_DATAGRAM_AND_EVENT_QUEUE_SIZE)) {
  spin_unlock(&context->lock);
  vmci_ctx_put(context);
  kfree(dq_entry);
  pr_devel("Context (ID=0x%x) receive queue is full\n", cid);
  return VMCI_ERROR_NO_RESOURCES;
 }

 list_add(&dq_entry->list_item, &context->datagram_queue);
 context->pending_datagrams++;
 context->datagram_queue_size += vmci_dg_size;
 ctx_signal_notify(context);
 wake_up(&context->host_context.wait_queue);
 spin_unlock(&context->lock);
 vmci_ctx_put(context);

 return vmci_dg_size;
}
