#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_3__ {int /*<<< orphan*/  wait_queue; } ;
struct vmci_ctx {int user_version; void* queue_pair_array; void* doorbell_array; int /*<<< orphan*/  list_item; scalar_t__ cid; int /*<<< orphan*/ * notify_page; int /*<<< orphan*/ * notify; int /*<<< orphan*/  cred; scalar_t__ priv_flags; void* pending_doorbell_array; TYPE_1__ host_context; int /*<<< orphan*/  notifier_list; int /*<<< orphan*/  datagram_queue; int /*<<< orphan*/  lock; int /*<<< orphan*/  kref; } ;
struct cred {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  head; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct vmci_ctx* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ VMCI_INVALID_ID ; 
 int /*<<< orphan*/  VMCI_MAX_GUEST_DOORBELL_COUNT ; 
 int /*<<< orphan*/  VMCI_MAX_GUEST_QP_COUNT ; 
 scalar_t__ VMCI_PRIVILEGE_ALL_FLAGS ; 
 scalar_t__ VMCI_RESERVED_CID_LIMIT ; 
 int /*<<< orphan*/  ctx_dummy_notify ; 
 TYPE_2__ ctx_list ; 
 int /*<<< orphan*/  FUNC2 (struct cred const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct vmci_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct vmci_ctx* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 void* FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (void*) ; 

struct vmci_ctx *FUNC17(u32 cid, u32 priv_flags,
				 uintptr_t event_hnd,
				 int user_version,
				 const struct cred *cred)
{
	struct vmci_ctx *context;
	int error;

	if (cid == VMCI_INVALID_ID) {
		FUNC9("Invalid context ID for VMCI context\n");
		error = -EINVAL;
		goto err_out;
	}

	if (priv_flags & ~VMCI_PRIVILEGE_ALL_FLAGS) {
		FUNC9("Invalid flag (flags=0x%x) for VMCI context\n",
			 priv_flags);
		error = -EINVAL;
		goto err_out;
	}

	if (user_version == 0) {
		FUNC9("Invalid suer_version %d\n", user_version);
		error = -EINVAL;
		goto err_out;
	}

	context = FUNC6(sizeof(*context), GFP_KERNEL);
	if (!context) {
		FUNC10("Failed to allocate memory for VMCI context\n");
		error = -EINVAL;
		goto err_out;
	}

	FUNC5(&context->kref);
	FUNC12(&context->lock);
	FUNC1(&context->list_item);
	FUNC1(&context->datagram_queue);
	FUNC1(&context->notifier_list);

	/* Initialize host-specific VMCI context. */
	FUNC3(&context->host_context.wait_queue);

	context->queue_pair_array =
		FUNC15(0, VMCI_MAX_GUEST_QP_COUNT);
	if (!context->queue_pair_array) {
		error = -ENOMEM;
		goto err_free_ctx;
	}

	context->doorbell_array =
		FUNC15(0, VMCI_MAX_GUEST_DOORBELL_COUNT);
	if (!context->doorbell_array) {
		error = -ENOMEM;
		goto err_free_qp_array;
	}

	context->pending_doorbell_array =
		FUNC15(0, VMCI_MAX_GUEST_DOORBELL_COUNT);
	if (!context->pending_doorbell_array) {
		error = -ENOMEM;
		goto err_free_db_array;
	}

	context->user_version = user_version;

	context->priv_flags = priv_flags;

	if (cred)
		context->cred = FUNC2(cred);

	context->notify = &ctx_dummy_notify;
	context->notify_page = NULL;

	/*
	 * If we collide with an existing context we generate a new
	 * and use it instead. The VMX will determine if regeneration
	 * is okay. Since there isn't 4B - 16 VMs running on a given
	 * host, the below loop will terminate.
	 */
	FUNC11(&ctx_list.lock);

	while (FUNC14(cid)) {
		/* We reserve the lowest 16 ids for fixed contexts. */
		cid = FUNC8(cid, VMCI_RESERVED_CID_LIMIT - 1) + 1;
		if (cid == VMCI_INVALID_ID)
			cid = VMCI_RESERVED_CID_LIMIT;
	}
	context->cid = cid;

	FUNC7(&context->list_item, &ctx_list.head);
	FUNC13(&ctx_list.lock);

	return context;

 err_free_db_array:
	FUNC16(context->doorbell_array);
 err_free_qp_array:
	FUNC16(context->queue_pair_array);
 err_free_ctx:
	FUNC4(context);
 err_out:
	return FUNC0(error);
}