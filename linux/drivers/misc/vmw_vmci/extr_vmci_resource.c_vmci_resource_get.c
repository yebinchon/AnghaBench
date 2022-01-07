
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_resource {int kref; } ;


 int kref_get (int *) ;

struct vmci_resource *vmci_resource_get(struct vmci_resource *resource)
{
 kref_get(&resource->kref);

 return resource;
}
