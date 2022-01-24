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
typedef  scalar_t__ vmci_callback ;
typedef  scalar_t__ u32 ;
struct vmci_handle {scalar_t__ context; scalar_t__ resource; } ;
struct dbell_entry {int /*<<< orphan*/  resource; int /*<<< orphan*/  active; scalar_t__ idx; void* client_data; scalar_t__ notify_cb; scalar_t__ run_delayed; int /*<<< orphan*/  work; scalar_t__ priv_flags; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int VMCI_ERROR_INVALID_ARGS ; 
 int VMCI_ERROR_NO_MEM ; 
 int VMCI_ERROR_NO_RESOURCES ; 
 scalar_t__ VMCI_FLAG_DELAYED_CB ; 
 scalar_t__ VMCI_HOST_CONTEXT_ID ; 
 scalar_t__ VMCI_INVALID_ID ; 
 scalar_t__ VMCI_PRIVILEGE_ALL_FLAGS ; 
 int /*<<< orphan*/  VMCI_RESOURCE_TYPE_DOORBELL ; 
 int VMCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  dbell_delayed_dispatch ; 
 int /*<<< orphan*/  FUNC3 (struct dbell_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dbell_entry*) ; 
 int FUNC5 (struct vmci_handle,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct dbell_entry*) ; 
 struct dbell_entry* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 scalar_t__ FUNC10 () ; 
 scalar_t__ FUNC11 () ; 
 scalar_t__ FUNC12 (struct vmci_handle) ; 
 struct vmci_handle FUNC13 (scalar_t__,scalar_t__) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct vmci_handle) ; 
 struct vmci_handle FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

int FUNC17(struct vmci_handle *handle,
			 u32 flags,
			 u32 priv_flags,
			 vmci_callback notify_cb, void *client_data)
{
	struct dbell_entry *entry;
	struct vmci_handle new_handle;
	int result;

	if (!handle || !notify_cb || flags & ~VMCI_FLAG_DELAYED_CB ||
	    priv_flags & ~VMCI_PRIVILEGE_ALL_FLAGS)
		return VMCI_ERROR_INVALID_ARGS;

	entry = FUNC7(sizeof(*entry), GFP_KERNEL);
	if (entry == NULL) {
		FUNC9("Failed allocating memory for datagram entry\n");
		return VMCI_ERROR_NO_MEM;
	}

	if (FUNC12(*handle)) {
		u32 context_id = FUNC10();

		if (context_id == VMCI_INVALID_ID) {
			FUNC9("Failed to get context ID\n");
			result = VMCI_ERROR_NO_RESOURCES;
			goto free_mem;
		}

		/* Let resource code allocate a free ID for us */
		new_handle = FUNC13(context_id, VMCI_INVALID_ID);
	} else {
		bool valid_context = false;

		/*
		 * Validate the handle.  We must do both of the checks below
		 * because we can be acting as both a host and a guest at the
		 * same time. We always allow the host context ID, since the
		 * host functionality is in practice always there with the
		 * unified driver.
		 */
		if (handle->context == VMCI_HOST_CONTEXT_ID ||
		    (FUNC11() &&
		     FUNC10() == handle->context)) {
			valid_context = true;
		}

		if (!valid_context || handle->resource == VMCI_INVALID_ID) {
			FUNC8("Invalid argument (handle=0x%x:0x%x)\n",
				 handle->context, handle->resource);
			result = VMCI_ERROR_INVALID_ARGS;
			goto free_mem;
		}

		new_handle = *handle;
	}

	entry->idx = 0;
	FUNC0(&entry->node);
	entry->priv_flags = priv_flags;
	FUNC1(&entry->work, dbell_delayed_dispatch);
	entry->run_delayed = flags & VMCI_FLAG_DELAYED_CB;
	entry->notify_cb = notify_cb;
	entry->client_data = client_data;
	FUNC2(&entry->active, 0);

	result = FUNC14(&entry->resource,
				   VMCI_RESOURCE_TYPE_DOORBELL,
				   new_handle);
	if (result != VMCI_SUCCESS) {
		FUNC9("Failed to add new resource (handle=0x%x:0x%x), error: %d\n",
			new_handle.context, new_handle.resource, result);
		goto free_mem;
	}

	new_handle = FUNC15(&entry->resource);
	if (FUNC11()) {
		FUNC3(entry);
		result = FUNC5(new_handle, entry->idx);
		if (VMCI_SUCCESS != result)
			goto destroy_resource;

		FUNC2(&entry->active, 1);
	}

	*handle = new_handle;

	return result;

 destroy_resource:
	FUNC4(entry);
	FUNC16(&entry->resource);
 free_mem:
	FUNC6(entry);
	return result;
}