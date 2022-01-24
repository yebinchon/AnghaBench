#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct qp_guest_endpoint {int dummy; } ;
struct qp_entry {int flags; scalar_t__ ref_count; int /*<<< orphan*/  handle; } ;
struct TYPE_4__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int VMCI_QPFLAG_LOCAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qp_guest_endpoint*) ; 
 TYPE_1__ qp_guest_endpoints ; 
 struct qp_entry* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct qp_entry*) ; 

void FUNC6(void)
{
	struct qp_entry *entry;
	struct qp_guest_endpoint *ep;

	FUNC0(&qp_guest_endpoints.mutex);

	while ((entry = FUNC4(&qp_guest_endpoints))) {
		ep = (struct qp_guest_endpoint *)entry;

		/* Don't make a hypercall for local queue_pairs. */
		if (!(entry->flags & VMCI_QPFLAG_LOCAL))
			FUNC2(entry->handle);

		/* We cannot fail the exit, so let's reset ref_count. */
		entry->ref_count = 0;
		FUNC5(&qp_guest_endpoints, entry);

		FUNC3(ep);
	}

	FUNC1(&qp_guest_endpoints.mutex);
}