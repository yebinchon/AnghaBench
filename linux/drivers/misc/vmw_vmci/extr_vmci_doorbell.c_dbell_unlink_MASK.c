#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  unlink_msg ;
struct vmci_handle {int dummy; } ;
struct TYPE_2__ {scalar_t__ payload_size; int /*<<< orphan*/  src; int /*<<< orphan*/  dst; } ;
struct vmci_doorbell_unlink_msg {TYPE_1__ hdr; struct vmci_handle handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  VMCI_ANON_SRC_HANDLE ; 
 scalar_t__ VMCI_DG_HEADERSIZE ; 
 int /*<<< orphan*/  VMCI_DOORBELL_UNLINK ; 
 int /*<<< orphan*/  VMCI_HYPERVISOR_CONTEXT_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC2(struct vmci_handle handle)
{
	struct vmci_doorbell_unlink_msg unlink_msg;

	unlink_msg.hdr.dst = FUNC0(VMCI_HYPERVISOR_CONTEXT_ID,
					      VMCI_DOORBELL_UNLINK);
	unlink_msg.hdr.src = VMCI_ANON_SRC_HANDLE;
	unlink_msg.hdr.payload_size = sizeof(unlink_msg) - VMCI_DG_HEADERSIZE;
	unlink_msg.handle = handle;

	return FUNC1(&unlink_msg.hdr);
}