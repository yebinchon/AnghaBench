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
typedef  int /*<<< orphan*/  u32 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct hinic_hwif {struct pci_dev* pdev; } ;
struct hinic_eq {int num_pages; scalar_t__ type; int /*<<< orphan*/ * dma_addr; int /*<<< orphan*/ * virt_addr; int /*<<< orphan*/  page_size; int /*<<< orphan*/  wrapped; struct hinic_hwif* hwif; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct hinic_eq*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hinic_eq*,int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ HINIC_AEQ ; 
 scalar_t__ HINIC_CEQ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WRAPPED ; 
 int /*<<< orphan*/  FUNC3 (struct hinic_eq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hinic_eq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC6 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct hinic_hwif*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct hinic_eq *eq)
{
	struct hinic_hwif *hwif = eq->hwif;
	struct pci_dev *pdev = hwif->pdev;
	u32 init_val, addr, val;
	size_t addr_size;
	int err, pg;

	addr_size = eq->num_pages * sizeof(*eq->dma_addr);
	eq->dma_addr = FUNC6(&pdev->dev, addr_size, GFP_KERNEL);
	if (!eq->dma_addr)
		return -ENOMEM;

	addr_size = eq->num_pages * sizeof(*eq->virt_addr);
	eq->virt_addr = FUNC6(&pdev->dev, addr_size, GFP_KERNEL);
	if (!eq->virt_addr) {
		err = -ENOMEM;
		goto err_virt_addr_alloc;
	}

	for (pg = 0; pg < eq->num_pages; pg++) {
		eq->virt_addr[pg] = FUNC7(&pdev->dev,
						       eq->page_size,
						       &eq->dma_addr[pg],
						       GFP_KERNEL);
		if (!eq->virt_addr[pg]) {
			err = -ENOMEM;
			goto err_dma_alloc;
		}

		addr = FUNC0(eq, pg);
		val = FUNC11(eq->dma_addr[pg]);

		FUNC9(hwif, addr, val);

		addr = FUNC1(eq, pg);
		val = FUNC10(eq->dma_addr[pg]);

		FUNC9(hwif, addr, val);
	}

	init_val = FUNC2(eq->wrapped, WRAPPED);

	if (eq->type == HINIC_AEQ)
		FUNC3(eq, init_val);
	else if (eq->type == HINIC_CEQ)
		FUNC4(eq, init_val);

	return 0;

err_dma_alloc:
	while (--pg >= 0)
		FUNC8(&pdev->dev, eq->page_size,
				  eq->virt_addr[pg],
				  eq->dma_addr[pg]);

	FUNC5(&pdev->dev, eq->virt_addr);

err_virt_addr_alloc:
	FUNC5(&pdev->dev, eq->dma_addr);
	return err;
}