
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_resource {int type; } ;
struct vmci_handle {int dummy; } ;
typedef enum vmci_resource_type { ____Placeholder_vmci_resource_type } vmci_resource_type ;


 int VMCI_RESOURCE_TYPE_ANY ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct vmci_resource* vmci_resource_get (struct vmci_resource*) ;
 struct vmci_resource* vmci_resource_lookup (struct vmci_handle,int) ;

struct vmci_resource *
vmci_resource_by_handle(struct vmci_handle resource_handle,
   enum vmci_resource_type resource_type)
{
 struct vmci_resource *r, *resource = ((void*)0);

 rcu_read_lock();

 r = vmci_resource_lookup(resource_handle, resource_type);
 if (r &&
     (resource_type == r->type ||
      resource_type == VMCI_RESOURCE_TYPE_ANY)) {
  resource = vmci_resource_get(r);
 }

 rcu_read_unlock();

 return resource;
}
