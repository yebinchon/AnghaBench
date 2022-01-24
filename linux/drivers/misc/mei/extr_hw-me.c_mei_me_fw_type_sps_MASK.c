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
struct pci_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  bus; int /*<<< orphan*/  devfn; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_CFG_HFS_1 ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool FUNC4(struct pci_dev *pdev)
{
	u32 reg;
	unsigned int devfn;

	/*
	 * Read ME FW Status register to check for SPS Firmware
	 * The SPS FW is only signaled in pci function 0
	 */
	devfn = FUNC0(FUNC1(pdev->devfn), 0);
	FUNC2(pdev->bus, devfn, PCI_CFG_HFS_1, &reg);
	FUNC3(&pdev->dev, "PCI_CFG_HFS_1", PCI_CFG_HFS_1, reg);
	/* if bits [19:16] = 15, running SPS Firmware */
	return (reg & 0xf0000) == 0xf0000;
}