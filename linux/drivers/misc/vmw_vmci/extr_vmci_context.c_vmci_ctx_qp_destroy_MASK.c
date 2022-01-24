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
struct vmci_handle {int dummy; } ;
struct vmci_ctx {int /*<<< orphan*/  queue_pair_array; } ;

/* Variables and functions */
 int VMCI_ERROR_INVALID_ARGS ; 
 int VMCI_ERROR_NOT_FOUND ; 
 int VMCI_SUCCESS ; 
 struct vmci_handle FUNC0 (int /*<<< orphan*/ ,struct vmci_handle) ; 
 scalar_t__ FUNC1 (struct vmci_handle) ; 

int FUNC2(struct vmci_ctx *context, struct vmci_handle handle)
{
	struct vmci_handle hndl;

	if (context == NULL || FUNC1(handle))
		return VMCI_ERROR_INVALID_ARGS;

	hndl = FUNC0(context->queue_pair_array, handle);

	return FUNC1(hndl) ?
		VMCI_ERROR_NOT_FOUND : VMCI_SUCCESS;
}