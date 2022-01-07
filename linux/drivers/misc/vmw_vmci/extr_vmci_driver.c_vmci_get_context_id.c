
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int VMCI_HOST_CONTEXT_ID ;
 int VMCI_INVALID_ID ;
 int vmci_get_vm_context_id () ;
 scalar_t__ vmci_guest_code_active () ;
 scalar_t__ vmci_host_code_active () ;

u32 vmci_get_context_id(void)
{
 if (vmci_guest_code_active())
  return vmci_get_vm_context_id();
 else if (vmci_host_code_active())
  return VMCI_HOST_CONTEXT_ID;

 return VMCI_INVALID_ID;
}
