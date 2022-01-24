#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long long u8 ;
struct vf_pf_event_data {scalar_t__ vf_id; int /*<<< orphan*/  msg_addr_lo; int /*<<< orphan*/  msg_addr_hi; } ;
struct bnx2x {int dummy; } ;
struct TYPE_4__ {scalar_t__ first_vf_in_pf; } ;
struct TYPE_6__ {unsigned long long event_occur; int /*<<< orphan*/  event_mutex; TYPE_1__ sriov; } ;
struct TYPE_5__ {void* vf_addr_lo; void* vf_addr_hi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  BNX2X_IOV_HANDLE_VF_MSG ; 
 int /*<<< orphan*/  BNX2X_MSG_IOV ; 
 scalar_t__ FUNC1 (struct bnx2x*) ; 
 TYPE_3__* FUNC2 (struct bnx2x*) ; 
 TYPE_2__* FUNC3 (struct bnx2x*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 unsigned long long FUNC6 (struct bnx2x*,scalar_t__) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(struct bnx2x *bp,
			   struct vf_pf_event_data *vfpf_event)
{
	u8 vf_idx;

	FUNC4(BNX2X_MSG_IOV,
	   "vf pf event received: vfid %d, address_hi %x, address lo %x",
	   vfpf_event->vf_id, vfpf_event->msg_addr_hi, vfpf_event->msg_addr_lo);
	/* Sanity checks consider removing later */

	/* check if the vf_id is valid */
	if (vfpf_event->vf_id - FUNC2(bp)->sriov.first_vf_in_pf >
	    FUNC1(bp)) {
		FUNC0("Illegal vf_id %d max allowed: %d\n",
			  vfpf_event->vf_id, FUNC1(bp));
		return;
	}

	vf_idx = FUNC6(bp, vfpf_event->vf_id);

	/* Update VFDB with current message and schedule its handling */
	FUNC8(&FUNC2(bp)->event_mutex);
	FUNC3(bp, vf_idx)->vf_addr_hi =
		FUNC7(vfpf_event->msg_addr_hi);
	FUNC3(bp, vf_idx)->vf_addr_lo =
		FUNC7(vfpf_event->msg_addr_lo);
	FUNC2(bp)->event_occur |= (1ULL << vf_idx);
	FUNC9(&FUNC2(bp)->event_mutex);

	FUNC5(bp, BNX2X_IOV_HANDLE_VF_MSG);
}