
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_resource {int kref; } ;


 int VMCI_SUCCESS ;
 int VMCI_SUCCESS_ENTRY_DEAD ;
 scalar_t__ kref_put (int *,int ) ;
 int vmci_release_resource ;

int vmci_resource_put(struct vmci_resource *resource)
{




 return kref_put(&resource->kref, vmci_release_resource) ?
  VMCI_SUCCESS_ENTRY_DEAD : VMCI_SUCCESS;
}
