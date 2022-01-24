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
struct vmci_ctx {int /*<<< orphan*/  lock; struct vmci_handle_arr* pending_doorbell_array; } ;

/* Variables and functions */
 int VMCI_ERROR_NOT_FOUND ; 
 int VMCI_ERROR_NO_MEM ; 
 int /*<<< orphan*/  VMCI_MAX_GUEST_DOORBELL_COUNT ; 
 int VMCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct vmci_ctx* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vmci_ctx*) ; 
 struct vmci_handle_arr* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(u32 context_id,
				   struct vmci_handle_arr **db_handle_array,
				   struct vmci_handle_arr **qp_handle_array)
{
	struct vmci_ctx *context;
	int result = VMCI_SUCCESS;

	context = FUNC2(context_id);
	if (context == NULL)
		return VMCI_ERROR_NOT_FOUND;

	FUNC0(&context->lock);

	*db_handle_array = context->pending_doorbell_array;
	context->pending_doorbell_array =
		FUNC4(0, VMCI_MAX_GUEST_DOORBELL_COUNT);
	if (!context->pending_doorbell_array) {
		context->pending_doorbell_array = *db_handle_array;
		*db_handle_array = NULL;
		result = VMCI_ERROR_NO_MEM;
	}
	*qp_handle_array = NULL;

	FUNC1(&context->lock);
	FUNC3(context);

	return result;
}