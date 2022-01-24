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
typedef  scalar_t__ u32 ;
struct vmci_handle {int dummy; } ;
struct vmci_ctx {int /*<<< orphan*/  lock; int /*<<< orphan*/  pending_doorbell_array; int /*<<< orphan*/  doorbell_array; } ;

/* Variables and functions */
 int VMCI_ERROR_INVALID_ARGS ; 
 int VMCI_ERROR_NOT_FOUND ; 
 scalar_t__ VMCI_INVALID_ID ; 
 int VMCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct vmci_ctx* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct vmci_ctx*) ; 
 struct vmci_handle FUNC4 (int /*<<< orphan*/ ,struct vmci_handle) ; 
 scalar_t__ FUNC5 (struct vmci_handle) ; 

int FUNC6(u32 context_id, struct vmci_handle handle)
{
	struct vmci_ctx *context;
	struct vmci_handle removed_handle;

	if (context_id == VMCI_INVALID_ID || FUNC5(handle))
		return VMCI_ERROR_INVALID_ARGS;

	context = FUNC2(context_id);
	if (context == NULL)
		return VMCI_ERROR_NOT_FOUND;

	FUNC0(&context->lock);
	removed_handle =
	    FUNC4(context->doorbell_array, handle);
	FUNC4(context->pending_doorbell_array, handle);
	FUNC1(&context->lock);

	FUNC3(context);

	return FUNC5(removed_handle) ?
	    VMCI_ERROR_NOT_FOUND : VMCI_SUCCESS;
}