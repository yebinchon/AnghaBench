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
typedef  size_t u64 ;
struct hl_vm_phys_pg_pack {size_t npages; int /*<<< orphan*/ * pages; int /*<<< orphan*/  page_size; int /*<<< orphan*/  total_size; scalar_t__ contiguous; int /*<<< orphan*/  created_from_userptr; } ;
struct hl_vm {int /*<<< orphan*/  dram_pg_pool_refcount; int /*<<< orphan*/  dram_pg_pool; } ;
struct hl_device {struct hl_vm vm; } ;

/* Variables and functions */
 int /*<<< orphan*/  dram_pg_pool_do_release ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hl_vm_phys_pg_pack*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct hl_device *hdev,
		struct hl_vm_phys_pg_pack *phys_pg_pack)
{
	struct hl_vm *vm = &hdev->vm;
	u64 i;

	if (!phys_pg_pack->created_from_userptr) {
		if (phys_pg_pack->contiguous) {
			FUNC0(vm->dram_pg_pool, phys_pg_pack->pages[0],
					phys_pg_pack->total_size);

			for (i = 0; i < phys_pg_pack->npages ; i++)
				FUNC2(&vm->dram_pg_pool_refcount,
					dram_pg_pool_do_release);
		} else {
			for (i = 0 ; i < phys_pg_pack->npages ; i++) {
				FUNC0(vm->dram_pg_pool,
						phys_pg_pack->pages[i],
						phys_pg_pack->page_size);
				FUNC2(&vm->dram_pg_pool_refcount,
					dram_pg_pool_do_release);
			}
		}
	}

	FUNC3(phys_pg_pack->pages);
	FUNC1(phys_pg_pack);
}