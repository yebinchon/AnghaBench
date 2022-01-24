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
typedef  int u32 ;
struct pt1 {TYPE_1__* pdev; } ;
typedef  int dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PT1_PAGE_SHIFT ; 
 int PT1_PAGE_SIZE ; 
 void* FUNC1 (int /*<<< orphan*/ *,int,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC2(struct pt1 *pt1, dma_addr_t *addrp, u32 *pfnp)
{
	void *page;
	dma_addr_t addr;

	page = FUNC1(&pt1->pdev->dev, PT1_PAGE_SIZE, &addr,
				  GFP_KERNEL);
	if (page == NULL)
		return NULL;

	FUNC0(addr & (PT1_PAGE_SIZE - 1));
	FUNC0(addr >> PT1_PAGE_SHIFT >> 31 >> 1);

	*addrp = addr;
	*pfnp = addr >> PT1_PAGE_SHIFT;
	return page;
}