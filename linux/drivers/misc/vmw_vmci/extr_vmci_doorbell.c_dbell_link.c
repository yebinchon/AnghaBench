
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vmci_handle {int dummy; } ;
struct TYPE_2__ {scalar_t__ payload_size; int src; int dst; } ;
struct vmci_doorbell_link_msg {TYPE_1__ hdr; int notify_idx; struct vmci_handle handle; } ;
typedef int link_msg ;


 int VMCI_ANON_SRC_HANDLE ;
 scalar_t__ VMCI_DG_HEADERSIZE ;
 int VMCI_DOORBELL_LINK ;
 int VMCI_HYPERVISOR_CONTEXT_ID ;
 int vmci_make_handle (int ,int ) ;
 int vmci_send_datagram (TYPE_1__*) ;

__attribute__((used)) static int dbell_link(struct vmci_handle handle, u32 notify_idx)
{
 struct vmci_doorbell_link_msg link_msg;

 link_msg.hdr.dst = vmci_make_handle(VMCI_HYPERVISOR_CONTEXT_ID,
         VMCI_DOORBELL_LINK);
 link_msg.hdr.src = VMCI_ANON_SRC_HANDLE;
 link_msg.hdr.payload_size = sizeof(link_msg) - VMCI_DG_HEADERSIZE;
 link_msg.handle = handle;
 link_msg.notify_idx = notify_idx;

 return vmci_send_datagram(&link_msg.hdr);
}
