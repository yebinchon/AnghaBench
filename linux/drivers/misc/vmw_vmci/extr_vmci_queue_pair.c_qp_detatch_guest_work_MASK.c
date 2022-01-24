#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct vmci_handle {int dummy; } ;
struct TYPE_5__ {int flags; int ref_count; } ;
struct qp_guest_endpoint {TYPE_2__ qp; } ;
struct TYPE_4__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int VMCI_ERROR_NOT_FOUND ; 
 int VMCI_QPFLAG_LOCAL ; 
 int VMCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct vmci_handle) ; 
 int /*<<< orphan*/  FUNC3 (struct qp_guest_endpoint*) ; 
 TYPE_1__ qp_guest_endpoints ; 
 struct qp_guest_endpoint* FUNC4 (struct vmci_handle) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_2__*) ; 
 int FUNC6 (int,struct vmci_handle) ; 

__attribute__((used)) static int FUNC7(struct vmci_handle handle)
{
	int result;
	struct qp_guest_endpoint *entry;
	u32 ref_count = ~0;	/* To avoid compiler warning below */

	FUNC0(&qp_guest_endpoints.mutex);

	entry = FUNC4(handle);
	if (!entry) {
		FUNC1(&qp_guest_endpoints.mutex);
		return VMCI_ERROR_NOT_FOUND;
	}

	if (entry->qp.flags & VMCI_QPFLAG_LOCAL) {
		result = VMCI_SUCCESS;

		if (entry->qp.ref_count > 1) {
			result = FUNC6(false, handle);
			/*
			 * We can fail to notify a local queuepair
			 * because we can't allocate.  We still want
			 * to release the entry if that happens, so
			 * don't bail out yet.
			 */
		}
	} else {
		result = FUNC2(handle);
		if (result < VMCI_SUCCESS) {
			/*
			 * We failed to notify a non-local queuepair.
			 * That other queuepair might still be
			 * accessing the shared memory, so don't
			 * release the entry yet.  It will get cleaned
			 * up by VMCIqueue_pair_Exit() if necessary
			 * (assuming we are going away, otherwise why
			 * did this fail?).
			 */

			FUNC1(&qp_guest_endpoints.mutex);
			return result;
		}
	}

	/*
	 * If we get here then we either failed to notify a local queuepair, or
	 * we succeeded in all cases.  Release the entry if required.
	 */

	entry->qp.ref_count--;
	if (entry->qp.ref_count == 0)
		FUNC5(&qp_guest_endpoints, &entry->qp);

	/* If we didn't remove the entry, this could change once we unlock. */
	if (entry)
		ref_count = entry->qp.ref_count;

	FUNC1(&qp_guest_endpoints.mutex);

	if (ref_count == 0)
		FUNC3(entry);

	return result;
}