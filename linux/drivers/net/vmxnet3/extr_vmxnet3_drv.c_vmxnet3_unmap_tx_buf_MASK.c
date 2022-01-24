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
struct vmxnet3_tx_buf_info {scalar_t__ map_type; int /*<<< orphan*/  len; int /*<<< orphan*/  dma_addr; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 scalar_t__ VMXNET3_MAP_NONE ; 
 scalar_t__ VMXNET3_MAP_PAGE ; 
 scalar_t__ VMXNET3_MAP_SINGLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct vmxnet3_tx_buf_info *tbi,
		     struct pci_dev *pdev)
{
	if (tbi->map_type == VMXNET3_MAP_SINGLE)
		FUNC2(&pdev->dev, tbi->dma_addr, tbi->len,
				 PCI_DMA_TODEVICE);
	else if (tbi->map_type == VMXNET3_MAP_PAGE)
		FUNC1(&pdev->dev, tbi->dma_addr, tbi->len,
			       PCI_DMA_TODEVICE);
	else
		FUNC0(tbi->map_type != VMXNET3_MAP_NONE);

	tbi->map_type = VMXNET3_MAP_NONE; /* to help debugging */
}