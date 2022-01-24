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
struct hl_vm {int init_done; int /*<<< orphan*/  dram_pg_pool; int /*<<< orphan*/  phys_pg_pack_handles; int /*<<< orphan*/  idr_lock; int /*<<< orphan*/  dram_pg_pool_refcount; } ;
struct asic_fixed_properties {scalar_t__ dram_user_base_address; scalar_t__ dram_end_address; int /*<<< orphan*/  dram_page_size; } ;
struct hl_device {int /*<<< orphan*/  dram_used_mem; int /*<<< orphan*/  dev; struct hl_vm vm; struct asic_fixed_properties asic_prop; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int FUNC9(struct hl_device *hdev)
{
	struct asic_fixed_properties *prop = &hdev->asic_prop;
	struct hl_vm *vm = &hdev->vm;
	int rc;

	vm->dram_pg_pool = FUNC4(FUNC0(prop->dram_page_size), -1);
	if (!vm->dram_pg_pool) {
		FUNC2(hdev->dev, "Failed to create dram page pool\n");
		return -ENOMEM;
	}

	FUNC7(&vm->dram_pg_pool_refcount);

	rc = FUNC3(vm->dram_pg_pool, prop->dram_user_base_address,
			prop->dram_end_address - prop->dram_user_base_address,
			-1);

	if (rc) {
		FUNC2(hdev->dev,
			"Failed to add memory to dram page pool %d\n", rc);
		goto pool_add_err;
	}

	FUNC8(&vm->idr_lock);
	FUNC6(&vm->phys_pg_pack_handles);

	FUNC1(&hdev->dram_used_mem, 0);

	vm->init_done = true;

	return 0;

pool_add_err:
	FUNC5(vm->dram_pg_pool);

	return rc;
}