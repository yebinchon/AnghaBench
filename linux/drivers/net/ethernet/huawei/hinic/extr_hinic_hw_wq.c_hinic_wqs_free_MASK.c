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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hinic_wqs*) ; 
 int /*<<< orphan*/  FUNC2 (struct hinic_wqs*,int) ; 

void FUNC3(struct hinic_wqs *wqs)
{
	struct hinic_hwif *hwif = wqs->hwif;
	struct pci_dev *pdev = hwif->pdev;
	int page_idx;

	FUNC0(&pdev->dev, wqs->free_blocks);

	for (page_idx = 0; page_idx < wqs->num_pages; page_idx++)
		FUNC2(wqs, page_idx);

	FUNC1(wqs);
}