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
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
struct vmci_qp_page_store {int /*<<< orphan*/  len; int /*<<< orphan*/  pages; } ;
struct vmci_handle {int /*<<< orphan*/  resource; int /*<<< orphan*/  context; } ;
struct vmci_ctx {int dummy; } ;
struct qp_broker_entry {scalar_t__ const create_id; scalar_t__ const attach_id; int /*<<< orphan*/  client_data; int /*<<< orphan*/  (* wakeup_cb ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  state; int /*<<< orphan*/  produce_q; int /*<<< orphan*/  consume_q; int /*<<< orphan*/  qp; } ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int VMCI_ERROR_INVALID_ARGS ; 
 int VMCI_ERROR_NOT_FOUND ; 
 int VMCI_ERROR_QUEUEPAIR_NOTATTACHED ; 
 scalar_t__ const VMCI_HOST_CONTEXT_ID ; 
 scalar_t__ const VMCI_INVALID_ID ; 
 int VMCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__ const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct qp_broker_entry* FUNC5 (struct vmci_handle) ; 
 TYPE_1__ qp_broker_list ; 
 int FUNC6 (struct vmci_qp_page_store*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct qp_broker_entry*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct vmci_ctx*) ; 
 int /*<<< orphan*/  FUNC11 (struct vmci_ctx*,struct vmci_handle) ; 
 scalar_t__ FUNC12 (struct vmci_handle) ; 

int FUNC13(struct vmci_handle handle,
		       struct vmci_ctx *context,
		       u64 guest_mem)
{
	struct qp_broker_entry *entry;
	const u32 context_id = FUNC10(context);
	int result;

	if (FUNC12(handle) || !context ||
	    context_id == VMCI_INVALID_ID)
		return VMCI_ERROR_INVALID_ARGS;

	FUNC1(&qp_broker_list.mutex);

	if (!FUNC11(context, handle)) {
		FUNC3("Context (ID=0x%x) not attached to queue pair (handle=0x%x:0x%x)\n",
			 context_id, handle.context, handle.resource);
		result = VMCI_ERROR_NOT_FOUND;
		goto out;
	}

	entry = FUNC5(handle);
	if (!entry) {
		FUNC3("Context (ID=0x%x) reports being attached to queue pair (handle=0x%x:0x%x) that isn't present in broker\n",
			 context_id, handle.context, handle.resource);
		result = VMCI_ERROR_NOT_FOUND;
		goto out;
	}

	if (context_id != entry->create_id && context_id != entry->attach_id) {
		result = VMCI_ERROR_QUEUEPAIR_NOTATTACHED;
		goto out;
	}

	result = VMCI_SUCCESS;

	if (context_id != VMCI_HOST_CONTEXT_ID) {
		struct vmci_qp_page_store page_store;

		page_store.pages = guest_mem;
		page_store.len = FUNC0(entry->qp);

		FUNC4(entry->produce_q);
		FUNC8(entry);
		result =
		    FUNC6(&page_store,
						 entry->produce_q,
						 entry->consume_q);
		FUNC7(entry->produce_q);
		if (result == VMCI_SUCCESS) {
			/* Move state from *_NO_MEM to *_MEM */

			entry->state++;

			if (entry->wakeup_cb)
				entry->wakeup_cb(entry->client_data);
		}
	}

 out:
	FUNC2(&qp_broker_list.mutex);
	return result;
}