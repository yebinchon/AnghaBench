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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct hinic_wqs {int num_pages; int /*<<< orphan*/  free_blocks; struct hinic_hwif* hwif; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int WQS_BLOCKS_PER_PAGE ; 
 int /*<<< orphan*/  FUNC1 (struct hinic_wqs*) ; 
 int WQS_MAX_NUM_BLOCKS ; 
 scalar_t__ FUNC2 (struct hinic_wqs*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hinic_wqs*) ; 
 int /*<<< orphan*/  FUNC6 (struct hinic_wqs*) ; 
 int FUNC7 (struct hinic_wqs*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct hinic_wqs*,int) ; 

int FUNC9(struct hinic_wqs *wqs, int max_wqs,
		    struct hinic_hwif *hwif)
{
	struct pci_dev *pdev = hwif->pdev;
	int err, i, page_idx;

	max_wqs = FUNC0(max_wqs, WQS_BLOCKS_PER_PAGE);
	if (max_wqs > WQS_MAX_NUM_BLOCKS)  {
		FUNC3(&pdev->dev, "Invalid max_wqs = %d\n", max_wqs);
		return -EINVAL;
	}

	wqs->hwif = hwif;
	wqs->num_pages = max_wqs / WQS_BLOCKS_PER_PAGE;

	if (FUNC2(wqs)) {
		FUNC3(&pdev->dev,
			"Failed to allocate mem for page addresses\n");
		return -ENOMEM;
	}

	for (page_idx = 0; page_idx < wqs->num_pages; page_idx++) {
		err = FUNC7(wqs, page_idx);
		if (err) {
			FUNC3(&pdev->dev, "Failed wq page allocation\n");
			goto err_wq_allocate_page;
		}
	}

	wqs->free_blocks = FUNC4(&pdev->dev, FUNC1(wqs),
					GFP_KERNEL);
	if (!wqs->free_blocks) {
		err = -ENOMEM;
		goto err_alloc_blocks;
	}

	FUNC6(wqs);
	return 0;

err_alloc_blocks:
err_wq_allocate_page:
	for (i = 0; i < page_idx; i++)
		FUNC8(wqs, i);

	FUNC5(wqs);
	return err;
}