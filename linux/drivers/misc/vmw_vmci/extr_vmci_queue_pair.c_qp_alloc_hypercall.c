
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct TYPE_4__ {scalar_t__ payload_size; int src; int dst; } ;
struct vmci_qp_alloc_msg {int num_ppns; TYPE_2__ hdr; int consume_size; int produce_size; int flags; int peer; int handle; } ;
struct TYPE_3__ {int consume_size; int produce_size; int flags; int peer; int handle; } ;
struct qp_guest_endpoint {int num_ppns; int ppn_set; TYPE_1__ qp; } ;


 int GFP_KERNEL ;
 int VMCI_ANON_SRC_HANDLE ;
 scalar_t__ VMCI_DG_HEADERSIZE ;
 int VMCI_ERROR_INVALID_ARGS ;
 int VMCI_ERROR_NO_MEM ;
 int VMCI_HYPERVISOR_CONTEXT_ID ;
 int VMCI_QUEUEPAIR_ALLOC ;
 int VMCI_SUCCESS ;
 int kfree (struct vmci_qp_alloc_msg*) ;
 struct vmci_qp_alloc_msg* kmalloc (size_t,int ) ;
 int qp_populate_ppn_set (int *,int *) ;
 int vmci_make_handle (int ,int ) ;
 int vmci_send_datagram (TYPE_2__*) ;
 scalar_t__ vmci_use_ppn64 () ;

__attribute__((used)) static int qp_alloc_hypercall(const struct qp_guest_endpoint *entry)
{
 struct vmci_qp_alloc_msg *alloc_msg;
 size_t msg_size;
 size_t ppn_size;
 int result;

 if (!entry || entry->num_ppns <= 2)
  return VMCI_ERROR_INVALID_ARGS;

 ppn_size = vmci_use_ppn64() ? sizeof(u64) : sizeof(u32);
 msg_size = sizeof(*alloc_msg) +
     (size_t) entry->num_ppns * ppn_size;
 alloc_msg = kmalloc(msg_size, GFP_KERNEL);
 if (!alloc_msg)
  return VMCI_ERROR_NO_MEM;

 alloc_msg->hdr.dst = vmci_make_handle(VMCI_HYPERVISOR_CONTEXT_ID,
           VMCI_QUEUEPAIR_ALLOC);
 alloc_msg->hdr.src = VMCI_ANON_SRC_HANDLE;
 alloc_msg->hdr.payload_size = msg_size - VMCI_DG_HEADERSIZE;
 alloc_msg->handle = entry->qp.handle;
 alloc_msg->peer = entry->qp.peer;
 alloc_msg->flags = entry->qp.flags;
 alloc_msg->produce_size = entry->qp.produce_size;
 alloc_msg->consume_size = entry->qp.consume_size;
 alloc_msg->num_ppns = entry->num_ppns;

 result = qp_populate_ppn_set((u8 *)alloc_msg + sizeof(*alloc_msg),
         &entry->ppn_set);
 if (result == VMCI_SUCCESS)
  result = vmci_send_datagram(&alloc_msg->hdr);

 kfree(alloc_msg);

 return result;
}
