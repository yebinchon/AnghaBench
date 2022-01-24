#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vmci_qp {int /*<<< orphan*/  peer; int /*<<< orphan*/  handle; int /*<<< orphan*/  guest_endpoint; } ;

/* Variables and functions */
 int VMCI_ERROR_INVALID_ARGS ; 
 int /*<<< orphan*/  VMCI_INVALID_HANDLE ; 
 int /*<<< orphan*/  VMCI_INVALID_ID ; 
 int /*<<< orphan*/  FUNC0 (struct vmci_qp*) ; 
 int /*<<< orphan*/  FUNC1 (struct vmci_qp*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct vmci_qp **qpair)
{
	int result;
	struct vmci_qp *old_qpair;

	if (!qpair || !(*qpair))
		return VMCI_ERROR_INVALID_ARGS;

	old_qpair = *qpair;
	result = FUNC2(old_qpair->handle, old_qpair->guest_endpoint);

	/*
	 * The guest can fail to detach for a number of reasons, and
	 * if it does so, it will cleanup the entry (if there is one).
	 * The host can fail too, but it won't cleanup the entry
	 * immediately, it will do that later when the context is
	 * freed.  Either way, we need to release the qpair struct
	 * here; there isn't much the caller can do, and we don't want
	 * to leak.
	 */

	FUNC1(old_qpair, 0, sizeof(*old_qpair));
	old_qpair->handle = VMCI_INVALID_HANDLE;
	old_qpair->peer = VMCI_INVALID_ID;
	FUNC0(old_qpair);
	*qpair = NULL;

	return result;
}