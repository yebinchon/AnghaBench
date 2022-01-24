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
struct hinic_hwif {struct pci_dev* pdev; } ;
struct hinic_eq {int num_pages; int /*<<< orphan*/ * dma_addr; int /*<<< orphan*/ * virt_addr; int /*<<< orphan*/  page_size; struct hinic_hwif* hwif; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct hinic_eq *eq)
{
	struct hinic_hwif *hwif = eq->hwif;
	struct pci_dev *pdev = hwif->pdev;
	int pg;

	for (pg = 0; pg < eq->num_pages; pg++)
		FUNC1(&pdev->dev, eq->page_size,
				  eq->virt_addr[pg],
				  eq->dma_addr[pg]);

	FUNC0(&pdev->dev, eq->virt_addr);
	FUNC0(&pdev->dev, eq->dma_addr);
}