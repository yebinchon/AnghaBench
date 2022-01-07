
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vmci_handle {int dummy; } ;
struct TYPE_2__ {scalar_t__ payload_size; int src; int dst; } ;
struct vmci_doorbell_notify_msg {TYPE_1__ hdr; struct vmci_handle handle; } ;
typedef int notify_msg ;


 int VMCI_ANON_SRC_HANDLE ;
 scalar_t__ VMCI_DG_HEADERSIZE ;
 int VMCI_DOORBELL_NOTIFY ;
 int VMCI_HYPERVISOR_CONTEXT_ID ;
 int vmci_make_handle (int ,int ) ;
 int vmci_send_datagram (TYPE_1__*) ;

__attribute__((used)) static int dbell_notify_as_guest(struct vmci_handle handle, u32 priv_flags)
{
 struct vmci_doorbell_notify_msg notify_msg;

 notify_msg.hdr.dst = vmci_make_handle(VMCI_HYPERVISOR_CONTEXT_ID,
           VMCI_DOORBELL_NOTIFY);
 notify_msg.hdr.src = VMCI_ANON_SRC_HANDLE;
 notify_msg.hdr.payload_size = sizeof(notify_msg) - VMCI_DG_HEADERSIZE;
 notify_msg.handle = handle;

 return vmci_send_datagram(&notify_msg.hdr);
}
