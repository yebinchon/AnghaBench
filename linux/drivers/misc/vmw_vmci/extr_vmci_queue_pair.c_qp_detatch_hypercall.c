
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int payload_size; int src; int dst; } ;
struct vmci_handle {int dummy; } ;
struct vmci_qp_detach_msg {TYPE_1__ hdr; struct vmci_handle handle; } ;
typedef int handle ;


 int VMCI_ANON_SRC_HANDLE ;
 int VMCI_HYPERVISOR_CONTEXT_ID ;
 int VMCI_QUEUEPAIR_DETACH ;
 int vmci_make_handle (int ,int ) ;
 int vmci_send_datagram (TYPE_1__*) ;

__attribute__((used)) static int qp_detatch_hypercall(struct vmci_handle handle)
{
 struct vmci_qp_detach_msg detach_msg;

 detach_msg.hdr.dst = vmci_make_handle(VMCI_HYPERVISOR_CONTEXT_ID,
           VMCI_QUEUEPAIR_DETACH);
 detach_msg.hdr.src = VMCI_ANON_SRC_HANDLE;
 detach_msg.hdr.payload_size = sizeof(handle);
 detach_msg.handle = handle;

 return vmci_send_datagram(&detach_msg.hdr);
}
