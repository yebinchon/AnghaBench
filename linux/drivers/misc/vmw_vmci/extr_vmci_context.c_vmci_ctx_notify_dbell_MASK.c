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
struct vmci_handle {scalar_t__ context; int /*<<< orphan*/  resource; } ;
struct TYPE_2__ {int /*<<< orphan*/  wait_queue; } ;
struct vmci_ctx {int /*<<< orphan*/  lock; TYPE_1__ host_context; int /*<<< orphan*/  pending_doorbell_array; int /*<<< orphan*/  doorbell_array; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int VMCI_ERROR_DST_UNREACHABLE ; 
 int VMCI_ERROR_INVALID_ARGS ; 
 int VMCI_ERROR_NOT_FOUND ; 
 int VMCI_ERROR_NO_ACCESS ; 
 scalar_t__ VMCI_HOST_CONTEXT_ID ; 
 scalar_t__ VMCI_NO_PRIVILEGE_FLAGS ; 
 int VMCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (struct vmci_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 struct vmci_ctx* FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct vmci_ctx*) ; 
 int FUNC9 (struct vmci_handle,scalar_t__*) ; 
 int FUNC10 (scalar_t__,struct vmci_handle) ; 
 scalar_t__ FUNC11 (scalar_t__,scalar_t__) ; 
 int FUNC12 (int /*<<< orphan*/ *,struct vmci_handle) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,struct vmci_handle) ; 
 scalar_t__ FUNC14 (struct vmci_handle) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

int FUNC16(u32 src_cid,
			  struct vmci_handle handle,
			  u32 src_priv_flags)
{
	struct vmci_ctx *dst_context;
	int result;

	if (FUNC14(handle))
		return VMCI_ERROR_INVALID_ARGS;

	/* Get the target VM's VMCI context. */
	dst_context = FUNC7(handle.context);
	if (!dst_context) {
		FUNC2("Invalid context (ID=0x%x)\n", handle.context);
		return VMCI_ERROR_NOT_FOUND;
	}

	if (src_cid != handle.context) {
		u32 dst_priv_flags;

		if (FUNC0(src_cid) &&
		    FUNC0(handle.context)) {
			FUNC2("Doorbell notification from VM to VM not supported (src=0x%x, dst=0x%x)\n",
				 src_cid, handle.context);
			result = VMCI_ERROR_DST_UNREACHABLE;
			goto out;
		}

		result = FUNC9(handle, &dst_priv_flags);
		if (result < VMCI_SUCCESS) {
			FUNC3("Failed to get privilege flags for destination (handle=0x%x:0x%x)\n",
				handle.context, handle.resource);
			goto out;
		}

		if (src_cid != VMCI_HOST_CONTEXT_ID ||
		    src_priv_flags == VMCI_NO_PRIVILEGE_FLAGS) {
			src_priv_flags = FUNC6(src_cid);
		}

		if (FUNC11(src_priv_flags, dst_priv_flags)) {
			result = VMCI_ERROR_NO_ACCESS;
			goto out;
		}
	}

	if (handle.context == VMCI_HOST_CONTEXT_ID) {
		result = FUNC10(src_cid, handle);
	} else {
		FUNC4(&dst_context->lock);

		if (!FUNC13(dst_context->doorbell_array,
					       handle)) {
			result = VMCI_ERROR_NOT_FOUND;
		} else {
			if (!FUNC13(
					dst_context->pending_doorbell_array,
					handle)) {
				result = FUNC12(
					&dst_context->pending_doorbell_array,
					handle);
				if (result == VMCI_SUCCESS) {
					FUNC1(dst_context);
					FUNC15(&dst_context->host_context.wait_queue);
				}
			} else {
				result = VMCI_SUCCESS;
			}
		}
		FUNC5(&dst_context->lock);
	}

 out:
	FUNC8(dst_context);

	return result;
}