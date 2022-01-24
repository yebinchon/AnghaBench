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
typedef  void* ulong ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct brcmf_pciedev_info {unsigned long long tcm; void* regs; struct pci_dev* pdev; } ;
struct brcmf_bus {int dummy; } ;
typedef  scalar_t__ phys_addr_t ;

/* Variables and functions */
 void* BRCMF_PCIE_REG_MAP_SIZE ; 
 int EINVAL ; 
 int /*<<< orphan*/  PCIE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned long long,unsigned long long,...) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_bus*,char*,int,...) ; 
 struct brcmf_bus* FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (scalar_t__,void*) ; 
 int FUNC4 (struct pci_dev*) ; 
 void* FUNC5 (struct pci_dev*,int) ; 
 scalar_t__ FUNC6 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC8(struct brcmf_pciedev_info *devinfo)
{
	struct pci_dev *pdev = devinfo->pdev;
	struct brcmf_bus *bus = FUNC2(&pdev->dev);
	int err;
	phys_addr_t  bar0_addr, bar1_addr;
	ulong bar1_size;

	err = FUNC4(pdev);
	if (err) {
		FUNC1(bus, "pci_enable_device failed err=%d\n", err);
		return err;
	}

	FUNC7(pdev);

	/* Bar-0 mapped address */
	bar0_addr = FUNC6(pdev, 0);
	/* Bar-1 mapped address */
	bar1_addr = FUNC6(pdev, 2);
	/* read Bar-1 mapped memory range */
	bar1_size = FUNC5(pdev, 2);
	if ((bar1_size == 0) || (bar1_addr == 0)) {
		FUNC1(bus, "BAR1 Not enabled, device size=%ld, addr=%#016llx\n",
			  bar1_size, (unsigned long long)bar1_addr);
		return -EINVAL;
	}

	devinfo->regs = FUNC3(bar0_addr, BRCMF_PCIE_REG_MAP_SIZE);
	devinfo->tcm = FUNC3(bar1_addr, bar1_size);

	if (!devinfo->regs || !devinfo->tcm) {
		FUNC1(bus, "ioremap() failed (%p,%p)\n", devinfo->regs,
			  devinfo->tcm);
		return -EINVAL;
	}
	FUNC0(PCIE, "Phys addr : reg space = %p base addr %#016llx\n",
		  devinfo->regs, (unsigned long long)bar0_addr);
	FUNC0(PCIE, "Phys addr : mem space = %p base addr %#016llx size 0x%x\n",
		  devinfo->tcm, (unsigned long long)bar1_addr,
		  (unsigned int)bar1_size);

	return 0;
}