#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct vmci_handle {int dummy; } ;
struct TYPE_8__ {int payload_size; void* src; void* dst; } ;
struct TYPE_5__ {int /*<<< orphan*/  event; } ;
struct TYPE_7__ {TYPE_4__ hdr; TYPE_1__ event_data; } ;
struct TYPE_6__ {struct vmci_handle handle; int /*<<< orphan*/  peer_id; } ;
struct vmci_event_qp {TYPE_3__ msg; TYPE_2__ payload; } ;
typedef  int /*<<< orphan*/  ev ;

/* Variables and functions */
 int /*<<< orphan*/  VMCI_CONTEXT_RESOURCE_ID ; 
 int /*<<< orphan*/  VMCI_EVENT_HANDLER ; 
 int /*<<< orphan*/  VMCI_EVENT_QP_PEER_ATTACH ; 
 int /*<<< orphan*/  VMCI_EVENT_QP_PEER_DETACH ; 
 int /*<<< orphan*/  VMCI_HYPERVISOR_CONTEXT_ID ; 
 int FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(bool attach, struct vmci_handle handle)
{
	u32 context_id = FUNC1();
	struct vmci_event_qp ev;

	ev.msg.hdr.dst = FUNC2(context_id, VMCI_EVENT_HANDLER);
	ev.msg.hdr.src = FUNC2(VMCI_HYPERVISOR_CONTEXT_ID,
					  VMCI_CONTEXT_RESOURCE_ID);
	ev.msg.hdr.payload_size = sizeof(ev) - sizeof(ev.msg.hdr);
	ev.msg.event_data.event =
	    attach ? VMCI_EVENT_QP_PEER_ATTACH : VMCI_EVENT_QP_PEER_DETACH;
	ev.payload.peer_id = context_id;
	ev.payload.handle = handle;

	return FUNC0(&ev.msg.hdr);
}