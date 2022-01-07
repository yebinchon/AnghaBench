
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct vmci_datagram {scalar_t__ payload_size; int src; int dst; } ;


 int VMCI_ANON_SRC_HANDLE ;
 int VMCI_GET_CONTEXT_ID ;
 int VMCI_HYPERVISOR_CONTEXT_ID ;
 scalar_t__ VMCI_INVALID_ID ;
 scalar_t__ vm_context_id ;
 int vmci_make_handle (int ,int ) ;
 scalar_t__ vmci_send_datagram (struct vmci_datagram*) ;

u32 vmci_get_vm_context_id(void)
{
 if (vm_context_id == VMCI_INVALID_ID) {
  struct vmci_datagram get_cid_msg;
  get_cid_msg.dst =
      vmci_make_handle(VMCI_HYPERVISOR_CONTEXT_ID,
         VMCI_GET_CONTEXT_ID);
  get_cid_msg.src = VMCI_ANON_SRC_HANDLE;
  get_cid_msg.payload_size = 0;
  vm_context_id = vmci_send_datagram(&get_cid_msg);
 }
 return vm_context_id;
}
