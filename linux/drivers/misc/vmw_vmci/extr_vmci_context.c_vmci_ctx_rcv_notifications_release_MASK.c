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
typedef  int /*<<< orphan*/  u32 ;
struct vmci_handle_arr {int dummy; } ;
struct vmci_handle {int dummy; } ;
struct vmci_ctx {int /*<<< orphan*/  lock; struct vmci_handle_arr* pending_doorbell_array; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vmci_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct vmci_ctx* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vmci_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (struct vmci_handle_arr**,struct vmci_handle) ; 
 int /*<<< orphan*/  FUNC6 (struct vmci_handle_arr*) ; 
 int /*<<< orphan*/  FUNC7 (struct vmci_handle_arr*,struct vmci_handle) ; 
 struct vmci_handle FUNC8 (struct vmci_handle_arr*) ; 
 int /*<<< orphan*/  FUNC9 (struct vmci_handle) ; 

void FUNC10(u32 context_id,
					struct vmci_handle_arr *db_handle_array,
					struct vmci_handle_arr *qp_handle_array,
					bool success)
{
	struct vmci_ctx *context = FUNC3(context_id);

	FUNC1(&context->lock);
	if (!success) {
		struct vmci_handle handle;

		/*
		 * New notifications may have been added while we were not
		 * holding the context lock, so we transfer any new pending
		 * doorbell notifications to the old array, and reinstate the
		 * old array.
		 */

		handle = FUNC8(
					context->pending_doorbell_array);
		while (!FUNC9(handle)) {
			if (!FUNC7(db_handle_array,
						       handle)) {
				FUNC5(
						&db_handle_array, handle);
			}
			handle = FUNC8(
					context->pending_doorbell_array);
		}
		FUNC6(context->pending_doorbell_array);
		context->pending_doorbell_array = db_handle_array;
		db_handle_array = NULL;
	} else {
		FUNC0(context);
	}
	FUNC2(&context->lock);
	FUNC4(context);

	if (db_handle_array)
		FUNC6(db_handle_array);

	if (qp_handle_array)
		FUNC6(qp_handle_array);
}