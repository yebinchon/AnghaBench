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
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ payload_size; int /*<<< orphan*/  src; int /*<<< orphan*/  dst; } ;
struct vmci_notify_bm_set_msg {TYPE_1__ hdr; scalar_t__ bitmap_ppn32; scalar_t__ bitmap_ppn64; } ;
typedef  int /*<<< orphan*/  bitmap_set_msg ;

/* Variables and functions */
 int /*<<< orphan*/  VMCI_ANON_SRC_HANDLE ; 
 scalar_t__ VMCI_DG_HEADERSIZE ; 
 int /*<<< orphan*/  VMCI_HYPERVISOR_CONTEXT_ID ; 
 int /*<<< orphan*/  VMCI_SET_NOTIFY_BITMAP ; 
 int VMCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 () ; 

bool FUNC4(u64 bitmap_ppn)
{
	int result;
	struct vmci_notify_bm_set_msg bitmap_set_msg;

	bitmap_set_msg.hdr.dst = FUNC1(VMCI_HYPERVISOR_CONTEXT_ID,
						  VMCI_SET_NOTIFY_BITMAP);
	bitmap_set_msg.hdr.src = VMCI_ANON_SRC_HANDLE;
	bitmap_set_msg.hdr.payload_size = sizeof(bitmap_set_msg) -
	    VMCI_DG_HEADERSIZE;
	if (FUNC3())
		bitmap_set_msg.bitmap_ppn64 = bitmap_ppn;
	else
		bitmap_set_msg.bitmap_ppn32 = (u32) bitmap_ppn;

	result = FUNC2(&bitmap_set_msg.hdr);
	if (result != VMCI_SUCCESS) {
		FUNC0("Failed to register (PPN=%llu) as notification bitmap (error=%d)\n",
			 bitmap_ppn, result);
		return false;
	}
	return true;
}