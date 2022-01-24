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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct phys_addr {void* hi; void* lo; } ;
struct be_dma_mem {int /*<<< orphan*/  dma; int /*<<< orphan*/  size; int /*<<< orphan*/  va; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ PAGE_SIZE_4K ; 
 void* FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct phys_addr *pages, u32 max_pages,
				      struct be_dma_mem *mem)
{
	int i, buf_pages = FUNC2(FUNC0(mem->va, mem->size), max_pages);
	u64 dma = (u64)mem->dma;

	for (i = 0; i < buf_pages; i++) {
		pages[i].lo = FUNC1(dma & 0xFFFFFFFF);
		pages[i].hi = FUNC1(FUNC3(dma));
		dma += PAGE_SIZE_4K;
	}
}