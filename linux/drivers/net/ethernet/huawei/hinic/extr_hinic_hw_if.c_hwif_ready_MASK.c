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

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  HINIC_CSR_FUNC_ATTR1_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INIT_STATUS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct hinic_hwif*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct hinic_hwif *hwif)
{
	struct pci_dev *pdev = hwif->pdev;
	u32 addr, attr1;

	addr   = HINIC_CSR_FUNC_ATTR1_ADDR;
	attr1  = FUNC2(hwif, addr);

	if (!FUNC0(attr1, INIT_STATUS)) {
		FUNC1(&pdev->dev, "hwif status is not ready\n");
		return -EFAULT;
	}

	return 0;
}