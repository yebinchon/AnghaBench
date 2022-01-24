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
typedef  int u64 ;
typedef  int u32 ;
struct hl_vm_phys_pg_pack {int npages; int page_size; int total_size; int flags; int contiguous; int* pages; int handle; int /*<<< orphan*/  asid; int /*<<< orphan*/  vm_type; } ;
struct hl_vm {int /*<<< orphan*/  dram_pg_pool; int /*<<< orphan*/  dram_pg_pool_refcount; int /*<<< orphan*/  idr_lock; int /*<<< orphan*/  phys_pg_pack_handles; } ;
struct TYPE_4__ {int mem_size; } ;
struct hl_mem_in {int flags; TYPE_2__ alloc; } ;
struct TYPE_3__ {int dram_page_size; } ;
struct hl_device {int /*<<< orphan*/  dram_used_mem; int /*<<< orphan*/  dev; TYPE_1__ asic_prop; struct hl_vm vm; } ;
struct hl_ctx {int /*<<< orphan*/  dram_phys_mem; int /*<<< orphan*/  asid; struct hl_device* hdev; } ;

/* Variables and functions */
 int EFAULT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HL_MEM_CONTIGUOUS ; 
 int /*<<< orphan*/  VM_TYPE_PHYS_PACK ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,struct hl_vm_phys_pg_pack*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hl_vm_phys_pg_pack*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int*) ; 
 int* FUNC9 (int,int,int /*<<< orphan*/ ) ; 
 struct hl_vm_phys_pg_pack* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct hl_ctx *ctx, struct hl_mem_in *args,
				u32 *ret_handle)
{
	struct hl_device *hdev = ctx->hdev;
	struct hl_vm *vm = &hdev->vm;
	struct hl_vm_phys_pg_pack *phys_pg_pack;
	u64 paddr = 0, total_size, num_pgs, i;
	u32 num_curr_pgs, page_size, page_shift;
	int handle, rc;
	bool contiguous;

	num_curr_pgs = 0;
	page_size = hdev->asic_prop.dram_page_size;
	page_shift = FUNC0(page_size);
	num_pgs = (args->alloc.mem_size + (page_size - 1)) >> page_shift;
	total_size = num_pgs << page_shift;

	contiguous = args->flags & HL_MEM_CONTIGUOUS;

	if (contiguous) {
		paddr = (u64) FUNC3(vm->dram_pg_pool, total_size);
		if (!paddr) {
			FUNC2(hdev->dev,
				"failed to allocate %llu huge contiguous pages\n",
				num_pgs);
			return -ENOMEM;
		}
	}

	phys_pg_pack = FUNC10(sizeof(*phys_pg_pack), GFP_KERNEL);
	if (!phys_pg_pack) {
		rc = -ENOMEM;
		goto pages_pack_err;
	}

	phys_pg_pack->vm_type = VM_TYPE_PHYS_PACK;
	phys_pg_pack->asid = ctx->asid;
	phys_pg_pack->npages = num_pgs;
	phys_pg_pack->page_size = page_size;
	phys_pg_pack->total_size = total_size;
	phys_pg_pack->flags = args->flags;
	phys_pg_pack->contiguous = contiguous;

	phys_pg_pack->pages = FUNC9(num_pgs, sizeof(u64), GFP_KERNEL);
	if (!phys_pg_pack->pages) {
		rc = -ENOMEM;
		goto pages_arr_err;
	}

	if (phys_pg_pack->contiguous) {
		for (i = 0 ; i < num_pgs ; i++)
			phys_pg_pack->pages[i] = paddr + i * page_size;
	} else {
		for (i = 0 ; i < num_pgs ; i++) {
			phys_pg_pack->pages[i] = (u64) FUNC3(
							vm->dram_pg_pool,
							page_size);
			if (!phys_pg_pack->pages[i]) {
				FUNC2(hdev->dev,
					"Failed to allocate device memory (out of memory)\n");
				rc = -ENOMEM;
				goto page_err;
			}

			num_curr_pgs++;
		}
	}

	FUNC11(&vm->idr_lock);
	handle = FUNC5(&vm->phys_pg_pack_handles, phys_pg_pack, 1, 0,
				GFP_ATOMIC);
	FUNC12(&vm->idr_lock);

	if (handle < 0) {
		FUNC2(hdev->dev, "Failed to get handle for page\n");
		rc = -EFAULT;
		goto idr_err;
	}

	for (i = 0 ; i < num_pgs ; i++)
		FUNC7(&vm->dram_pg_pool_refcount);

	phys_pg_pack->handle = handle;

	FUNC1(phys_pg_pack->total_size, &ctx->dram_phys_mem);
	FUNC1(phys_pg_pack->total_size, &hdev->dram_used_mem);

	*ret_handle = handle;

	return 0;

idr_err:
page_err:
	if (!phys_pg_pack->contiguous)
		for (i = 0 ; i < num_curr_pgs ; i++)
			FUNC4(vm->dram_pg_pool, phys_pg_pack->pages[i],
					page_size);

	FUNC8(phys_pg_pack->pages);
pages_arr_err:
	FUNC6(phys_pg_pack);
pages_pack_err:
	if (contiguous)
		FUNC4(vm->dram_pg_pool, paddr, total_size);

	return rc;
}