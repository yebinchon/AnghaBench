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
typedef  scalar_t__ u16 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct hinic_wq {int block_idx; int /*<<< orphan*/  num_q_pages; scalar_t__ mask; int /*<<< orphan*/  delta; int /*<<< orphan*/  prod_idx; int /*<<< orphan*/  cons_idx; int /*<<< orphan*/  block_paddr; int /*<<< orphan*/  shadow_block_vaddr; int /*<<< orphan*/  block_vaddr; scalar_t__ wqebb_size_shift; scalar_t__ wqebbs_per_page_shift; scalar_t__ num_wqebbs_per_page; scalar_t__ max_wqe_size; scalar_t__ q_depth; scalar_t__ wq_page_size; scalar_t__ wqebb_size; scalar_t__ page_idx; struct hinic_hwif* hwif; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;
struct hinic_cmdq_pages {struct hinic_hwif* hwif; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct hinic_cmdq_pages*,struct hinic_wq*) ; 
 int /*<<< orphan*/  FUNC2 (struct hinic_cmdq_pages*,struct hinic_wq*) ; 
 int /*<<< orphan*/  FUNC3 (struct hinic_cmdq_pages*,struct hinic_wq*) ; 
 int /*<<< orphan*/  CMDQ_WQ_MAX_PAGES ; 
 int EINVAL ; 
 int ENOMEM ; 
 int FUNC4 (struct hinic_wq*,struct hinic_hwif*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC6 (struct hinic_cmdq_pages*) ; 
 int /*<<< orphan*/  FUNC7 (struct hinic_cmdq_pages*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct hinic_wq*,struct hinic_hwif*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 

int FUNC12(struct hinic_cmdq_pages *cmdq_pages,
			 struct hinic_wq *wq, struct hinic_hwif *hwif,
			 int cmdq_blocks, u16 wqebb_size, u16 wq_page_size,
			 u16 q_depth, u16 max_wqe_size)
{
	struct pci_dev *pdev = hwif->pdev;
	u16 num_wqebbs_per_page_shift;
	u16 num_wqebbs_per_page;
	u16 wqebb_size_shift;
	int i, j, err = -ENOMEM;

	if (!FUNC11(wqebb_size)) {
		FUNC8(&pdev->dev, "wqebb_size must be power of 2\n");
		return -EINVAL;
	}

	if (wq_page_size == 0) {
		FUNC8(&pdev->dev, "wq_page_size must be > 0\n");
		return -EINVAL;
	}

	if (q_depth & (q_depth - 1)) {
		FUNC8(&pdev->dev, "WQ q_depth must be power of 2\n");
		return -EINVAL;
	}

	wqebb_size_shift = FUNC10(wqebb_size);
	num_wqebbs_per_page = FUNC0(wq_page_size, wqebb_size)
				>> wqebb_size_shift;

	if (!FUNC11(num_wqebbs_per_page)) {
		FUNC8(&pdev->dev, "num wqebbs per page must be power of 2\n");
		return -EINVAL;
	}

	cmdq_pages->hwif = hwif;

	err = FUNC6(cmdq_pages);
	if (err) {
		FUNC8(&pdev->dev, "Failed to allocate CMDQ page\n");
		return err;
	}
	num_wqebbs_per_page_shift = FUNC10(num_wqebbs_per_page);

	for (i = 0; i < cmdq_blocks; i++) {
		wq[i].hwif = hwif;
		wq[i].page_idx = 0;
		wq[i].block_idx = i;

		wq[i].wqebb_size = wqebb_size;
		wq[i].wq_page_size = wq_page_size;
		wq[i].q_depth = q_depth;
		wq[i].max_wqe_size = max_wqe_size;
		wq[i].num_wqebbs_per_page = num_wqebbs_per_page;
		wq[i].wqebbs_per_page_shift = num_wqebbs_per_page_shift;
		wq[i].wqebb_size_shift = wqebb_size_shift;
		wq[i].block_vaddr = FUNC3(cmdq_pages, &wq[i]);
		wq[i].shadow_block_vaddr = FUNC1(cmdq_pages, &wq[i]);
		wq[i].block_paddr = FUNC2(cmdq_pages, &wq[i]);

		err = FUNC4(&wq[i], cmdq_pages->hwif,
				     CMDQ_WQ_MAX_PAGES);
		if (err) {
			FUNC8(&pdev->dev, "Failed to alloc CMDQ blocks\n");
			goto err_cmdq_block;
		}

		FUNC5(&wq[i].cons_idx, 0);
		FUNC5(&wq[i].prod_idx, 0);
		FUNC5(&wq[i].delta, q_depth);
		wq[i].mask = q_depth - 1;
	}

	return 0;

err_cmdq_block:
	for (j = 0; j < i; j++)
		FUNC9(&wq[j], cmdq_pages->hwif, wq[j].num_q_pages);

	FUNC7(cmdq_pages);
	return err;
}