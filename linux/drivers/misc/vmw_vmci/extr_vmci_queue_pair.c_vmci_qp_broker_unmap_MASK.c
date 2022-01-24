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
typedef  scalar_t__ u32 ;
struct vmci_handle {int /*<<< orphan*/  resource; int /*<<< orphan*/  context; } ;
struct vmci_ctx {int dummy; } ;
struct qp_broker_entry {scalar_t__ const create_id; scalar_t__ const attach_id; int /*<<< orphan*/  produce_q; int /*<<< orphan*/  state; int /*<<< orphan*/  consume_q; } ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int VMCI_ERROR_INVALID_ARGS ; 
 int VMCI_ERROR_NOT_FOUND ; 
 int VMCI_ERROR_QUEUEPAIR_NOTATTACHED ; 
 scalar_t__ const VMCI_HOST_CONTEXT_ID ; 
 scalar_t__ const VMCI_INVALID_ID ; 
 int VMCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__ const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct qp_broker_entry* FUNC5 (struct vmci_handle) ; 
 TYPE_1__ qp_broker_list ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct qp_broker_entry*) ; 
 scalar_t__ FUNC10 (struct vmci_ctx*) ; 
 int /*<<< orphan*/  FUNC11 (struct vmci_ctx*,struct vmci_handle) ; 
 scalar_t__ FUNC12 (struct vmci_handle) ; 

int FUNC13(struct vmci_handle handle,
			 struct vmci_ctx *context,
			 u32 gid)
{
	struct qp_broker_entry *entry;
	const u32 context_id = FUNC10(context);
	int result;

	if (FUNC12(handle) || !context ||
	    context_id == VMCI_INVALID_ID)
		return VMCI_ERROR_INVALID_ARGS;

	FUNC0(&qp_broker_list.mutex);

	if (!FUNC11(context, handle)) {
		FUNC2("Context (ID=0x%x) not attached to queue pair (handle=0x%x:0x%x)\n",
			 context_id, handle.context, handle.resource);
		result = VMCI_ERROR_NOT_FOUND;
		goto out;
	}

	entry = FUNC5(handle);
	if (!entry) {
		FUNC2("Context (ID=0x%x) reports being attached to queue pair (handle=0x%x:0x%x) that isn't present in broker\n",
			 context_id, handle.context, handle.resource);
		result = VMCI_ERROR_NOT_FOUND;
		goto out;
	}

	if (context_id != entry->create_id && context_id != entry->attach_id) {
		result = VMCI_ERROR_QUEUEPAIR_NOTATTACHED;
		goto out;
	}

	if (context_id != VMCI_HOST_CONTEXT_ID) {
		FUNC4(entry->produce_q);
		result = FUNC9(entry);
		if (result < VMCI_SUCCESS)
			FUNC3("Failed to save queue headers for queue pair (handle=0x%x:0x%x,result=%d)\n",
				handle.context, handle.resource, result);

		FUNC6(gid, entry->produce_q, entry->consume_q);

		/*
		 * On hosted, when we unmap queue pairs, the VMX will also
		 * unmap the guest memory, so we invalidate the previously
		 * registered memory. If the queue pair is mapped again at a
		 * later point in time, we will need to reregister the user
		 * memory with a possibly new user VA.
		 */
		FUNC7(entry->produce_q,
					       entry->consume_q);

		/*
		 * Move state from *_MEM to *_NO_MEM.
		 */
		entry->state--;

		FUNC8(entry->produce_q);
	}

	result = VMCI_SUCCESS;

 out:
	FUNC1(&qp_broker_list.mutex);
	return result;
}