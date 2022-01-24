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
typedef  scalar_t__ u32 ;
struct qed_dev {TYPE_1__* pdev; } ;
struct qed_chain {scalar_t__ page_cnt; void* p_virt_addr; int /*<<< orphan*/  p_phys_addr; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  QED_CHAIN_PAGE_SIZE ; 
 void* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_chain*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qed_chain*,void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qed_chain*) ; 

__attribute__((used)) static int
FUNC4(struct qed_dev *cdev, struct qed_chain *p_chain)
{
	void *p_virt = NULL, *p_virt_prev = NULL;
	dma_addr_t p_phys = 0;
	u32 i;

	for (i = 0; i < p_chain->page_cnt; i++) {
		p_virt = FUNC0(&cdev->pdev->dev,
					    QED_CHAIN_PAGE_SIZE,
					    &p_phys, GFP_KERNEL);
		if (!p_virt)
			return -ENOMEM;

		if (i == 0) {
			FUNC1(p_chain, p_virt, p_phys);
			FUNC3(p_chain);
		} else {
			FUNC2(p_chain, p_virt_prev,
						     p_virt, p_phys);
		}

		p_virt_prev = p_virt;
	}
	/* Last page's next element should point to the beginning of the
	 * chain.
	 */
	FUNC2(p_chain, p_virt_prev,
				     p_chain->p_virt_addr,
				     p_chain->p_phys_addr);

	return 0;
}