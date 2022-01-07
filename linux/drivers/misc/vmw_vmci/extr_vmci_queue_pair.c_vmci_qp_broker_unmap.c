
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct vmci_handle {int resource; int context; } ;
struct vmci_ctx {int dummy; } ;
struct qp_broker_entry {scalar_t__ const create_id; scalar_t__ const attach_id; int produce_q; int state; int consume_q; } ;
struct TYPE_2__ {int mutex; } ;


 int VMCI_ERROR_INVALID_ARGS ;
 int VMCI_ERROR_NOT_FOUND ;
 int VMCI_ERROR_QUEUEPAIR_NOTATTACHED ;
 scalar_t__ const VMCI_HOST_CONTEXT_ID ;
 scalar_t__ const VMCI_INVALID_ID ;
 int VMCI_SUCCESS ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_devel (char*,scalar_t__ const,int ,int ) ;
 int pr_warn (char*,int ,int ,int) ;
 int qp_acquire_queue_mutex (int ) ;
 struct qp_broker_entry* qp_broker_handle_to_entry (struct vmci_handle) ;
 TYPE_1__ qp_broker_list ;
 int qp_host_unmap_queues (scalar_t__,int ,int ) ;
 int qp_host_unregister_user_memory (int ,int ) ;
 int qp_release_queue_mutex (int ) ;
 int qp_save_headers (struct qp_broker_entry*) ;
 scalar_t__ vmci_ctx_get_id (struct vmci_ctx*) ;
 int vmci_ctx_qp_exists (struct vmci_ctx*,struct vmci_handle) ;
 scalar_t__ vmci_handle_is_invalid (struct vmci_handle) ;

int vmci_qp_broker_unmap(struct vmci_handle handle,
    struct vmci_ctx *context,
    u32 gid)
{
 struct qp_broker_entry *entry;
 const u32 context_id = vmci_ctx_get_id(context);
 int result;

 if (vmci_handle_is_invalid(handle) || !context ||
     context_id == VMCI_INVALID_ID)
  return VMCI_ERROR_INVALID_ARGS;

 mutex_lock(&qp_broker_list.mutex);

 if (!vmci_ctx_qp_exists(context, handle)) {
  pr_devel("Context (ID=0x%x) not attached to queue pair (handle=0x%x:0x%x)\n",
    context_id, handle.context, handle.resource);
  result = VMCI_ERROR_NOT_FOUND;
  goto out;
 }

 entry = qp_broker_handle_to_entry(handle);
 if (!entry) {
  pr_devel("Context (ID=0x%x) reports being attached to queue pair (handle=0x%x:0x%x) that isn't present in broker\n",
    context_id, handle.context, handle.resource);
  result = VMCI_ERROR_NOT_FOUND;
  goto out;
 }

 if (context_id != entry->create_id && context_id != entry->attach_id) {
  result = VMCI_ERROR_QUEUEPAIR_NOTATTACHED;
  goto out;
 }

 if (context_id != VMCI_HOST_CONTEXT_ID) {
  qp_acquire_queue_mutex(entry->produce_q);
  result = qp_save_headers(entry);
  if (result < VMCI_SUCCESS)
   pr_warn("Failed to save queue headers for queue pair (handle=0x%x:0x%x,result=%d)\n",
    handle.context, handle.resource, result);

  qp_host_unmap_queues(gid, entry->produce_q, entry->consume_q);
  qp_host_unregister_user_memory(entry->produce_q,
            entry->consume_q);




  entry->state--;

  qp_release_queue_mutex(entry->produce_q);
 }

 result = VMCI_SUCCESS;

 out:
 mutex_unlock(&qp_broker_list.mutex);
 return result;
}
