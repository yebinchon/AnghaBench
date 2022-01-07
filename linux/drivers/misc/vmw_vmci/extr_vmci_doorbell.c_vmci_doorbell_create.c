
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vmci_callback ;
typedef scalar_t__ u32 ;
struct vmci_handle {scalar_t__ context; scalar_t__ resource; } ;
struct dbell_entry {int resource; int active; scalar_t__ idx; void* client_data; scalar_t__ notify_cb; scalar_t__ run_delayed; int work; scalar_t__ priv_flags; int node; } ;


 int GFP_KERNEL ;
 int INIT_HLIST_NODE (int *) ;
 int INIT_WORK (int *,int ) ;
 int VMCI_ERROR_INVALID_ARGS ;
 int VMCI_ERROR_NO_MEM ;
 int VMCI_ERROR_NO_RESOURCES ;
 scalar_t__ VMCI_FLAG_DELAYED_CB ;
 scalar_t__ VMCI_HOST_CONTEXT_ID ;
 scalar_t__ VMCI_INVALID_ID ;
 scalar_t__ VMCI_PRIVILEGE_ALL_FLAGS ;
 int VMCI_RESOURCE_TYPE_DOORBELL ;
 int VMCI_SUCCESS ;
 int atomic_set (int *,int) ;
 int dbell_delayed_dispatch ;
 int dbell_index_table_add (struct dbell_entry*) ;
 int dbell_index_table_remove (struct dbell_entry*) ;
 int dbell_link (struct vmci_handle,scalar_t__) ;
 int kfree (struct dbell_entry*) ;
 struct dbell_entry* kmalloc (int,int ) ;
 int pr_devel (char*,scalar_t__,scalar_t__) ;
 int pr_warn (char*,...) ;
 scalar_t__ vmci_get_context_id () ;
 scalar_t__ vmci_guest_code_active () ;
 scalar_t__ vmci_handle_is_invalid (struct vmci_handle) ;
 struct vmci_handle vmci_make_handle (scalar_t__,scalar_t__) ;
 int vmci_resource_add (int *,int ,struct vmci_handle) ;
 struct vmci_handle vmci_resource_handle (int *) ;
 int vmci_resource_remove (int *) ;

int vmci_doorbell_create(struct vmci_handle *handle,
    u32 flags,
    u32 priv_flags,
    vmci_callback notify_cb, void *client_data)
{
 struct dbell_entry *entry;
 struct vmci_handle new_handle;
 int result;

 if (!handle || !notify_cb || flags & ~VMCI_FLAG_DELAYED_CB ||
     priv_flags & ~VMCI_PRIVILEGE_ALL_FLAGS)
  return VMCI_ERROR_INVALID_ARGS;

 entry = kmalloc(sizeof(*entry), GFP_KERNEL);
 if (entry == ((void*)0)) {
  pr_warn("Failed allocating memory for datagram entry\n");
  return VMCI_ERROR_NO_MEM;
 }

 if (vmci_handle_is_invalid(*handle)) {
  u32 context_id = vmci_get_context_id();

  if (context_id == VMCI_INVALID_ID) {
   pr_warn("Failed to get context ID\n");
   result = VMCI_ERROR_NO_RESOURCES;
   goto free_mem;
  }


  new_handle = vmci_make_handle(context_id, VMCI_INVALID_ID);
 } else {
  bool valid_context = 0;
  if (handle->context == VMCI_HOST_CONTEXT_ID ||
      (vmci_guest_code_active() &&
       vmci_get_context_id() == handle->context)) {
   valid_context = 1;
  }

  if (!valid_context || handle->resource == VMCI_INVALID_ID) {
   pr_devel("Invalid argument (handle=0x%x:0x%x)\n",
     handle->context, handle->resource);
   result = VMCI_ERROR_INVALID_ARGS;
   goto free_mem;
  }

  new_handle = *handle;
 }

 entry->idx = 0;
 INIT_HLIST_NODE(&entry->node);
 entry->priv_flags = priv_flags;
 INIT_WORK(&entry->work, dbell_delayed_dispatch);
 entry->run_delayed = flags & VMCI_FLAG_DELAYED_CB;
 entry->notify_cb = notify_cb;
 entry->client_data = client_data;
 atomic_set(&entry->active, 0);

 result = vmci_resource_add(&entry->resource,
       VMCI_RESOURCE_TYPE_DOORBELL,
       new_handle);
 if (result != VMCI_SUCCESS) {
  pr_warn("Failed to add new resource (handle=0x%x:0x%x), error: %d\n",
   new_handle.context, new_handle.resource, result);
  goto free_mem;
 }

 new_handle = vmci_resource_handle(&entry->resource);
 if (vmci_guest_code_active()) {
  dbell_index_table_add(entry);
  result = dbell_link(new_handle, entry->idx);
  if (VMCI_SUCCESS != result)
   goto destroy_resource;

  atomic_set(&entry->active, 1);
 }

 *handle = new_handle;

 return result;

 destroy_resource:
 dbell_index_table_remove(entry);
 vmci_resource_remove(&entry->resource);
 free_mem:
 kfree(entry);
 return result;
}
