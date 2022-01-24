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
typedef  int /*<<< orphan*/  vmci_event_release_cb ;
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct vmci_qp_page_store {int dummy; } ;
struct vmci_handle {scalar_t__ const context; scalar_t__ const resource; } ;
struct vmci_ctx {int dummy; } ;
struct qp_broker_entry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int VMCI_ERROR_ALREADY_EXISTS ; 
 int VMCI_ERROR_INVALID_ARGS ; 
 scalar_t__ const VMCI_HOST_CONTEXT_ID ; 
 scalar_t__ const VMCI_INVALID_ID ; 
 scalar_t__ VMCI_QPFLAG_LOCAL ; 
 scalar_t__ VMCI_QP_ALL_FLAGS ; 
 int /*<<< orphan*/  FUNC0 (struct vmci_qp_page_store*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__ const,scalar_t__ const,scalar_t__ const) ; 
 int FUNC4 (struct qp_broker_entry*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,struct vmci_qp_page_store*,struct vmci_ctx*,int /*<<< orphan*/ ,void*,struct qp_broker_entry**) ; 
 int FUNC5 (struct vmci_handle,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,struct vmci_qp_page_store*,struct vmci_ctx*,int /*<<< orphan*/ ,void*,struct qp_broker_entry**) ; 
 struct qp_broker_entry* FUNC6 (struct vmci_handle) ; 
 TYPE_1__ qp_broker_list ; 
 scalar_t__ FUNC7 (struct vmci_ctx*) ; 
 scalar_t__ FUNC8 (struct vmci_ctx*,struct vmci_handle) ; 
 scalar_t__ FUNC9 (struct vmci_handle) ; 

__attribute__((used)) static int FUNC10(struct vmci_handle handle,
			   u32 peer,
			   u32 flags,
			   u32 priv_flags,
			   u64 produce_size,
			   u64 consume_size,
			   struct vmci_qp_page_store *page_store,
			   struct vmci_ctx *context,
			   vmci_event_release_cb wakeup_cb,
			   void *client_data,
			   struct qp_broker_entry **ent,
			   bool *swap)
{
	const u32 context_id = FUNC7(context);
	bool create;
	struct qp_broker_entry *entry = NULL;
	bool is_local = flags & VMCI_QPFLAG_LOCAL;
	int result;

	if (FUNC9(handle) ||
	    (flags & ~VMCI_QP_ALL_FLAGS) || is_local ||
	    !(produce_size || consume_size) ||
	    !context || context_id == VMCI_INVALID_ID ||
	    handle.context == VMCI_INVALID_ID) {
		return VMCI_ERROR_INVALID_ARGS;
	}

	if (page_store && !FUNC0(page_store))
		return VMCI_ERROR_INVALID_ARGS;

	/*
	 * In the initial argument check, we ensure that non-vmkernel hosts
	 * are not allowed to create local queue pairs.
	 */

	FUNC1(&qp_broker_list.mutex);

	if (!is_local && FUNC8(context, handle)) {
		FUNC3("Context (ID=0x%x) already attached to queue pair (handle=0x%x:0x%x)\n",
			 context_id, handle.context, handle.resource);
		FUNC2(&qp_broker_list.mutex);
		return VMCI_ERROR_ALREADY_EXISTS;
	}

	if (handle.resource != VMCI_INVALID_ID)
		entry = FUNC6(handle);

	if (!entry) {
		create = true;
		result =
		    FUNC5(handle, peer, flags, priv_flags,
				     produce_size, consume_size, page_store,
				     context, wakeup_cb, client_data, ent);
	} else {
		create = false;
		result =
		    FUNC4(entry, peer, flags, priv_flags,
				     produce_size, consume_size, page_store,
				     context, wakeup_cb, client_data, ent);
	}

	FUNC2(&qp_broker_list.mutex);

	if (swap)
		*swap = (context_id == VMCI_HOST_CONTEXT_ID) &&
		    !(create && is_local);

	return result;
}