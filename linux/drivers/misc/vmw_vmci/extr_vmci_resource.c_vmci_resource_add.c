
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmci_handle {scalar_t__ resource; int context; } ;
struct vmci_resource {int type; int node; struct vmci_handle handle; int done; int kref; } ;
typedef enum vmci_resource_type { ____Placeholder_vmci_resource_type } vmci_resource_type ;
struct TYPE_2__ {int lock; int * entries; } ;


 int INIT_HLIST_NODE (int *) ;
 int VMCI_ERROR_ALREADY_EXISTS ;
 int VMCI_ERROR_NO_HANDLE ;
 scalar_t__ VMCI_INVALID_ID ;
 int VMCI_SUCCESS ;
 int hlist_add_head_rcu (int *,int *) ;
 int init_completion (int *) ;
 int kref_init (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ vmci_resource_find_id (int ,int) ;
 unsigned int vmci_resource_hash (struct vmci_handle) ;
 scalar_t__ vmci_resource_lookup (struct vmci_handle,int) ;
 TYPE_1__ vmci_resource_table ;

int vmci_resource_add(struct vmci_resource *resource,
        enum vmci_resource_type resource_type,
        struct vmci_handle handle)

{
 unsigned int idx;
 int result;

 spin_lock(&vmci_resource_table.lock);

 if (handle.resource == VMCI_INVALID_ID) {
  handle.resource = vmci_resource_find_id(handle.context,
   resource_type);
  if (handle.resource == VMCI_INVALID_ID) {
   result = VMCI_ERROR_NO_HANDLE;
   goto out;
  }
 } else if (vmci_resource_lookup(handle, resource_type)) {
  result = VMCI_ERROR_ALREADY_EXISTS;
  goto out;
 }

 resource->handle = handle;
 resource->type = resource_type;
 INIT_HLIST_NODE(&resource->node);
 kref_init(&resource->kref);
 init_completion(&resource->done);

 idx = vmci_resource_hash(resource->handle);
 hlist_add_head_rcu(&resource->node, &vmci_resource_table.entries[idx]);

 result = VMCI_SUCCESS;

out:
 spin_unlock(&vmci_resource_table.lock);
 return result;
}
