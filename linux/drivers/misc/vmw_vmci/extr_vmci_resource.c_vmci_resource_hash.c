
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_handle {int resource; } ;


 int VMCI_RESOURCE_HASH_BITS ;
 unsigned int hash_32 (int ,int ) ;

__attribute__((used)) static unsigned int vmci_resource_hash(struct vmci_handle handle)
{
 return hash_32(handle.resource, VMCI_RESOURCE_HASH_BITS);
}
