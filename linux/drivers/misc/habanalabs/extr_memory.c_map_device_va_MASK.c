#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct hl_vm_phys_pg_pack {int flags; scalar_t__ asid; int /*<<< orphan*/  mapping_cnt; scalar_t__ total_size; scalar_t__ offset; } ;
struct hl_vm_hash_node {int* ptr; int /*<<< orphan*/  node; scalar_t__ vaddr; } ;
struct hl_vm {int /*<<< orphan*/  idr_lock; int /*<<< orphan*/  phys_pg_pack_handles; } ;
struct hl_userptr {int dummy; } ;
struct TYPE_5__ {scalar_t__ hint_addr; int /*<<< orphan*/  handle; } ;
struct TYPE_4__ {scalar_t__ hint_addr; int /*<<< orphan*/  host_virt_addr; } ;
struct hl_mem_in {int flags; TYPE_2__ map_device; TYPE_1__ map_host; } ;
struct hl_device {int /*<<< orphan*/  dev; TYPE_3__* asic_funcs; struct hl_vm vm; } ;
struct hl_ctx {scalar_t__ asid; int /*<<< orphan*/  dram_va_range; int /*<<< orphan*/  host_va_range; int /*<<< orphan*/  mem_hash_lock; int /*<<< orphan*/  mem_hash; int /*<<< orphan*/  mmu_lock; struct hl_device* hdev; } ;
typedef  enum vm_type_t { ____Placeholder_vm_type_t } vm_type_t ;
struct TYPE_6__ {int /*<<< orphan*/  (* mmu_invalidate_cache ) (struct hl_device*,int) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HL_MEM_SHARED ; 
 int HL_MEM_USERPTR ; 
 scalar_t__ FUNC0 (struct hl_device*,int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct hl_device*,struct hl_vm_phys_pg_pack*) ; 
 int /*<<< orphan*/  FUNC6 (struct hl_device*,struct hl_userptr*) ; 
 int FUNC7 (struct hl_device*,struct hl_mem_in*,struct hl_userptr**) ; 
 scalar_t__ FUNC8 (struct hl_device*,int /*<<< orphan*/ *,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 struct hl_vm_phys_pg_pack* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct hl_ctx*,struct hl_userptr*,struct hl_vm_phys_pg_pack**) ; 
 int /*<<< orphan*/  FUNC12 (struct hl_vm_hash_node*) ; 
 struct hl_vm_hash_node* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (struct hl_ctx*,scalar_t__,struct hl_vm_phys_pg_pack*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct hl_device*,int) ; 

__attribute__((used)) static int FUNC21(struct hl_ctx *ctx, struct hl_mem_in *args,
		u64 *device_addr)
{
	struct hl_device *hdev = ctx->hdev;
	struct hl_vm *vm = &hdev->vm;
	struct hl_vm_phys_pg_pack *phys_pg_pack;
	struct hl_userptr *userptr = NULL;
	struct hl_vm_hash_node *hnode;
	enum vm_type_t *vm_type;
	u64 ret_vaddr, hint_addr;
	u32 handle = 0;
	int rc;
	bool is_userptr = args->flags & HL_MEM_USERPTR;

	/* Assume failure */
	*device_addr = 0;

	if (is_userptr) {
		rc = FUNC7(hdev, args, &userptr);
		if (rc) {
			FUNC3(hdev->dev, "failed to get userptr from va\n");
			return rc;
		}

		rc = FUNC11(ctx, userptr,
				&phys_pg_pack);
		if (rc) {
			FUNC3(hdev->dev,
				"unable to init page pack for vaddr 0x%llx\n",
				args->map_host.host_virt_addr);
			goto init_page_pack_err;
		}

		vm_type = (enum vm_type_t *) userptr;
		hint_addr = args->map_host.hint_addr;
	} else {
		handle = FUNC14(args->map_device.handle);

		FUNC18(&vm->idr_lock);
		phys_pg_pack = FUNC10(&vm->phys_pg_pack_handles, handle);
		if (!phys_pg_pack) {
			FUNC19(&vm->idr_lock);
			FUNC3(hdev->dev,
				"no match for handle %u\n", handle);
			return -EINVAL;
		}

		/* increment now to avoid freeing device memory while mapping */
		FUNC2(&phys_pg_pack->mapping_cnt);

		FUNC19(&vm->idr_lock);

		vm_type = (enum vm_type_t *) phys_pg_pack;

		hint_addr = args->map_device.hint_addr;
	}

	/*
	 * relevant for mapping device physical memory only, as host memory is
	 * implicitly shared
	 */
	if (!is_userptr && !(phys_pg_pack->flags & HL_MEM_SHARED) &&
			phys_pg_pack->asid != ctx->asid) {
		FUNC3(hdev->dev,
			"Failed to map memory, handle %u is not shared\n",
			handle);
		rc = -EPERM;
		goto shared_err;
	}

	hnode = FUNC13(sizeof(*hnode), GFP_KERNEL);
	if (!hnode) {
		rc = -ENOMEM;
		goto hnode_err;
	}

	ret_vaddr = FUNC8(hdev,
			is_userptr ? &ctx->host_va_range : &ctx->dram_va_range,
			phys_pg_pack->total_size, hint_addr, is_userptr);
	if (!ret_vaddr) {
		FUNC3(hdev->dev, "no available va block for handle %u\n",
				handle);
		rc = -ENOMEM;
		goto va_block_err;
	}

	FUNC16(&ctx->mmu_lock);

	rc = FUNC15(ctx, ret_vaddr, phys_pg_pack);
	if (rc) {
		FUNC17(&ctx->mmu_lock);
		FUNC3(hdev->dev, "mapping page pack failed for handle %u\n",
				handle);
		goto map_err;
	}

	hdev->asic_funcs->mmu_invalidate_cache(hdev, false);

	FUNC17(&ctx->mmu_lock);

	ret_vaddr += phys_pg_pack->offset;

	hnode->ptr = vm_type;
	hnode->vaddr = ret_vaddr;

	FUNC16(&ctx->mem_hash_lock);
	FUNC9(ctx->mem_hash, &hnode->node, ret_vaddr);
	FUNC17(&ctx->mem_hash_lock);

	*device_addr = ret_vaddr;

	if (is_userptr)
		FUNC5(hdev, phys_pg_pack);

	return 0;

map_err:
	if (FUNC0(hdev,
			is_userptr ? &ctx->host_va_range : &ctx->dram_va_range,
			ret_vaddr,
			ret_vaddr + phys_pg_pack->total_size - 1))
		FUNC4(hdev->dev,
			"release va block failed for handle 0x%x, vaddr: 0x%llx\n",
				handle, ret_vaddr);

va_block_err:
	FUNC12(hnode);
hnode_err:
shared_err:
	FUNC1(&phys_pg_pack->mapping_cnt);
	if (is_userptr)
		FUNC5(hdev, phys_pg_pack);
init_page_pack_err:
	if (is_userptr)
		FUNC6(hdev, userptr);

	return rc;
}