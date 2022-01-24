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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct qed_dev {TYPE_1__* pdev; } ;
struct qed_chain_next {int /*<<< orphan*/  next_phys; void* next_virt; } ;
struct qed_chain {scalar_t__ elem_size; scalar_t__ usable_per_page; scalar_t__ page_cnt; int /*<<< orphan*/  p_phys_addr; void* p_virt_addr; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QED_CHAIN_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct qed_dev *cdev,
				    struct qed_chain *p_chain)
{
	void *p_virt = p_chain->p_virt_addr, *p_virt_next = NULL;
	dma_addr_t p_phys = p_chain->p_phys_addr, p_phys_next = 0;
	struct qed_chain_next *p_next;
	u32 size, i;

	if (!p_virt)
		return;

	size = p_chain->elem_size * p_chain->usable_per_page;

	for (i = 0; i < p_chain->page_cnt; i++) {
		if (!p_virt)
			break;

		p_next = (struct qed_chain_next *)((u8 *)p_virt + size);
		p_virt_next = p_next->next_virt;
		p_phys_next = FUNC0(p_next->next_phys);

		FUNC1(&cdev->pdev->dev,
				  QED_CHAIN_PAGE_SIZE, p_virt, p_phys);

		p_virt = p_virt_next;
		p_phys = p_phys_next;
	}
}