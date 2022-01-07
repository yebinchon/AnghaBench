
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int unlink_msg ;
struct vmci_handle {int dummy; } ;
struct TYPE_2__ {scalar_t__ payload_size; int src; int dst; } ;
struct vmci_doorbell_unlink_msg {TYPE_1__ hdr; struct vmci_handle handle; } ;


 int VMCI_ANON_SRC_HANDLE ;
 scalar_t__ VMCI_DG_HEADERSIZE ;
 int VMCI_DOORBELL_UNLINK ;
 int VMCI_HYPERVISOR_CONTEXT_ID ;
 int vmci_make_handle (int ,int ) ;
 int vmci_send_datagram (TYPE_1__*) ;

__attribute__((used)) static int dbell_unlink(struct vmci_handle handle)
{
 struct vmci_doorbell_unlink_msg unlink_msg;

 unlink_msg.hdr.dst = vmci_make_handle(VMCI_HYPERVISOR_CONTEXT_ID,
           VMCI_DOORBELL_UNLINK);
 unlink_msg.hdr.src = VMCI_ANON_SRC_HANDLE;
 unlink_msg.hdr.payload_size = sizeof(unlink_msg) - VMCI_DG_HEADERSIZE;
 unlink_msg.handle = handle;

 return vmci_send_datagram(&unlink_msg.hdr);
}
