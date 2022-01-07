
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct vmci_handle {int dummy; } ;
struct TYPE_8__ {int payload_size; void* src; void* dst; } ;
struct TYPE_5__ {int event; } ;
struct TYPE_7__ {TYPE_4__ hdr; TYPE_1__ event_data; } ;
struct TYPE_6__ {struct vmci_handle handle; int peer_id; } ;
struct vmci_event_qp {TYPE_3__ msg; TYPE_2__ payload; } ;
typedef int ev ;


 int VMCI_CONTEXT_RESOURCE_ID ;
 int VMCI_EVENT_HANDLER ;
 int VMCI_EVENT_QP_PEER_ATTACH ;
 int VMCI_EVENT_QP_PEER_DETACH ;
 int VMCI_HYPERVISOR_CONTEXT_ID ;
 int vmci_event_dispatch (TYPE_4__*) ;
 int vmci_get_context_id () ;
 void* vmci_make_handle (int ,int ) ;

__attribute__((used)) static int qp_notify_peer_local(bool attach, struct vmci_handle handle)
{
 u32 context_id = vmci_get_context_id();
 struct vmci_event_qp ev;

 ev.msg.hdr.dst = vmci_make_handle(context_id, VMCI_EVENT_HANDLER);
 ev.msg.hdr.src = vmci_make_handle(VMCI_HYPERVISOR_CONTEXT_ID,
       VMCI_CONTEXT_RESOURCE_ID);
 ev.msg.hdr.payload_size = sizeof(ev) - sizeof(ev.msg.hdr);
 ev.msg.event_data.event =
     attach ? VMCI_EVENT_QP_PEER_ATTACH : VMCI_EVENT_QP_PEER_DETACH;
 ev.payload.peer_id = context_id;
 ev.payload.handle = handle;

 return vmci_event_dispatch(&ev.msg.hdr);
}
