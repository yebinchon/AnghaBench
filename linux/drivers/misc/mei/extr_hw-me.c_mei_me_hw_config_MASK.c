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
typedef  int u32 ;
struct pci_dev {int dummy; } ;
struct mei_me_hw {int hbuf_depth; int d0i3_supported; int /*<<< orphan*/  pg_state; } ;
struct mei_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int H_CBD ; 
 int H_D0I3C_I3 ; 
 int /*<<< orphan*/  MEI_PG_OFF ; 
 int /*<<< orphan*/  MEI_PG_ON ; 
 int /*<<< orphan*/  PCI_CFG_HFS_1 ; 
 int PCI_CFG_HFS_1_D0I3_MSK ; 
 int FUNC0 (struct mei_device*) ; 
 int FUNC1 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 struct mei_me_hw* FUNC3 (struct mei_device*) ; 
 struct pci_dev* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct mei_device *dev)
{
	struct pci_dev *pdev = FUNC4(dev->dev);
	struct mei_me_hw *hw = FUNC3(dev);
	u32 hcsr, reg;

	/* Doesn't change in runtime */
	hcsr = FUNC0(dev);
	hw->hbuf_depth = (hcsr & H_CBD) >> 24;

	reg = 0;
	FUNC2(pdev, PCI_CFG_HFS_1, &reg);
	FUNC5(dev->dev, "PCI_CFG_HFS_1", PCI_CFG_HFS_1, reg);
	hw->d0i3_supported =
		((reg & PCI_CFG_HFS_1_D0I3_MSK) == PCI_CFG_HFS_1_D0I3_MSK);

	hw->pg_state = MEI_PG_OFF;
	if (hw->d0i3_supported) {
		reg = FUNC1(dev);
		if (reg & H_D0I3C_I3)
			hw->pg_state = MEI_PG_ON;
	}
}