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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct hl_vm_phys_pg_pack {int /*<<< orphan*/ * pages; } ;
struct hl_vm {int /*<<< orphan*/  idr_lock; int /*<<< orphan*/  phys_pg_pack_handles; } ;
struct TYPE_2__ {int /*<<< orphan*/  handle; } ;
struct hl_mem_in {TYPE_1__ map_device; } ;
struct hl_device {int /*<<< orphan*/  dev; struct hl_vm vm; } ;
struct hl_ctx {struct hl_device* hdev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct hl_vm_phys_pg_pack* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct hl_ctx *ctx, struct hl_mem_in *args,
				u64 *paddr)
{
	struct hl_device *hdev = ctx->hdev;
	struct hl_vm *vm = &hdev->vm;
	struct hl_vm_phys_pg_pack *phys_pg_pack;
	u32 handle;

	handle = FUNC2(args->map_device.handle);
	FUNC3(&vm->idr_lock);
	phys_pg_pack = FUNC1(&vm->phys_pg_pack_handles, handle);
	if (!phys_pg_pack) {
		FUNC4(&vm->idr_lock);
		FUNC0(hdev->dev, "no match for handle %u\n", handle);
		return -EINVAL;
	}

	*paddr = phys_pg_pack->pages[0];

	FUNC4(&vm->idr_lock);

	return 0;
}