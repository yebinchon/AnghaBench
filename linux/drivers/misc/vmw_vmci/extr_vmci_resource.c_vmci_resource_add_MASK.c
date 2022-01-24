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
struct vmci_handle {scalar_t__ resource; int /*<<< orphan*/  context; } ;
struct vmci_resource {int type; int /*<<< orphan*/  node; struct vmci_handle handle; int /*<<< orphan*/  done; int /*<<< orphan*/  kref; } ;
typedef  enum vmci_resource_type { ____Placeholder_vmci_resource_type } vmci_resource_type ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/ * entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int VMCI_ERROR_ALREADY_EXISTS ; 
 int VMCI_ERROR_NO_HANDLE ; 
 scalar_t__ VMCI_INVALID_ID ; 
 int VMCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC7 (struct vmci_handle) ; 
 scalar_t__ FUNC8 (struct vmci_handle,int) ; 
 TYPE_1__ vmci_resource_table ; 

int FUNC9(struct vmci_resource *resource,
		      enum vmci_resource_type resource_type,
		      struct vmci_handle handle)

{
	unsigned int idx;
	int result;

	FUNC4(&vmci_resource_table.lock);

	if (handle.resource == VMCI_INVALID_ID) {
		handle.resource = FUNC6(handle.context,
			resource_type);
		if (handle.resource == VMCI_INVALID_ID) {
			result = VMCI_ERROR_NO_HANDLE;
			goto out;
		}
	} else if (FUNC8(handle, resource_type)) {
		result = VMCI_ERROR_ALREADY_EXISTS;
		goto out;
	}

	resource->handle = handle;
	resource->type = resource_type;
	FUNC0(&resource->node);
	FUNC3(&resource->kref);
	FUNC2(&resource->done);

	idx = FUNC7(resource->handle);
	FUNC1(&resource->node, &vmci_resource_table.entries[idx]);

	result = VMCI_SUCCESS;

out:
	FUNC5(&vmci_resource_table.lock);
	return result;
}