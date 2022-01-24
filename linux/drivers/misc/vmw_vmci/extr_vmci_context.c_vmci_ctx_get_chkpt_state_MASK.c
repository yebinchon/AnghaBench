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
typedef  int u32 ;
struct vmci_ctx {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
#define  VMCI_DOORBELL_CPT_STATE 130 
 int VMCI_ERROR_INVALID_ARGS ; 
 int VMCI_ERROR_NOT_FOUND ; 
#define  VMCI_NOTIFICATION_CPT_STATE 129 
 int VMCI_SUCCESS ; 
#define  VMCI_WELLKNOWN_CPT_STATE 128 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct vmci_ctx* FUNC3 (int) ; 
 int FUNC4 (struct vmci_ctx*,int*,void**) ; 
 int FUNC5 (struct vmci_ctx*,int*,void**) ; 
 int /*<<< orphan*/  FUNC6 (struct vmci_ctx*) ; 

int FUNC7(u32 context_id,
			     u32 cpt_type,
			     u32 *buf_size,
			     void **pbuf)
{
	struct vmci_ctx *context;
	int result;

	context = FUNC3(context_id);
	if (!context)
		return VMCI_ERROR_NOT_FOUND;

	FUNC1(&context->lock);

	switch (cpt_type) {
	case VMCI_NOTIFICATION_CPT_STATE:
		result = FUNC5(context, buf_size, pbuf);
		break;

	case VMCI_WELLKNOWN_CPT_STATE:
		/*
		 * For compatibility with VMX'en with VM to VM communication, we
		 * always return zero wellknown handles.
		 */

		*buf_size = 0;
		*pbuf = NULL;
		result = VMCI_SUCCESS;
		break;

	case VMCI_DOORBELL_CPT_STATE:
		result = FUNC4(context, buf_size, pbuf);
		break;

	default:
		FUNC0("Invalid cpt state (type=%d)\n", cpt_type);
		result = VMCI_ERROR_INVALID_ARGS;
		break;
	}

	FUNC2(&context->lock);
	FUNC6(context);

	return result;
}