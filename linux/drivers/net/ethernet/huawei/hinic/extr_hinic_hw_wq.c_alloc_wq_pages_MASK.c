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
typedef  int /*<<< orphan*/  u64 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct hinic_wq {int wq_page_size; int num_q_pages; void** shadow_block_vaddr; int /*<<< orphan*/ * block_vaddr; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct hinic_wq*) ; 
 int FUNC2 (struct hinic_wq*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hinic_wq*,struct hinic_hwif*,int) ; 

__attribute__((used)) static int FUNC7(struct hinic_wq *wq, struct hinic_hwif *hwif,
			  int max_pages)
{
	struct pci_dev *pdev = hwif->pdev;
	int i, err, num_q_pages;

	num_q_pages = FUNC0(FUNC1(wq), wq->wq_page_size) / wq->wq_page_size;
	if (num_q_pages > max_pages) {
		FUNC4(&pdev->dev, "Number wq pages exceeds the limit\n");
		return -EINVAL;
	}

	if (num_q_pages & (num_q_pages - 1)) {
		FUNC4(&pdev->dev, "Number wq pages must be power of 2\n");
		return -EINVAL;
	}

	wq->num_q_pages = num_q_pages;

	err = FUNC2(wq);
	if (err) {
		FUNC4(&pdev->dev, "Failed to allocate wqe shadow\n");
		return err;
	}

	for (i = 0; i < num_q_pages; i++) {
		void **vaddr = &wq->shadow_block_vaddr[i];
		u64 *paddr = &wq->block_vaddr[i];
		dma_addr_t dma_addr;

		*vaddr = FUNC5(&pdev->dev, wq->wq_page_size,
					    &dma_addr, GFP_KERNEL);
		if (!*vaddr) {
			FUNC4(&pdev->dev, "Failed to allocate wq page\n");
			goto err_alloc_wq_pages;
		}

		/* HW uses Big Endian Format */
		*paddr = FUNC3(dma_addr);
	}

	return 0;

err_alloc_wq_pages:
	FUNC6(wq, hwif, i);
	return -ENOMEM;
}