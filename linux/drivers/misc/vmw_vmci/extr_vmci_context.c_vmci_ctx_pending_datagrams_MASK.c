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
struct vmci_ctx {int /*<<< orphan*/  lock; int /*<<< orphan*/  pending_datagrams; } ;

/* Variables and functions */
 int VMCI_ERROR_INVALID_ARGS ; 
 int VMCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct vmci_ctx* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vmci_ctx*) ; 

int FUNC4(u32 cid, u32 *pending)
{
	struct vmci_ctx *context;

	context = FUNC2(cid);
	if (context == NULL)
		return VMCI_ERROR_INVALID_ARGS;

	FUNC0(&context->lock);
	if (pending)
		*pending = context->pending_datagrams;
	FUNC1(&context->lock);
	FUNC3(context);

	return VMCI_SUCCESS;
}