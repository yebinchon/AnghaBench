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
typedef  int u16 ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ PCI_VPD_ADDR ; 
 int PCI_VPD_ADDR_F ; 
 scalar_t__ PCI_VPD_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC3(struct pci_dev *pdev, int cap, u16 offset, u32 val)
{
	FUNC1(pdev, cap + PCI_VPD_DATA, val);
	FUNC2(pdev, cap + PCI_VPD_ADDR,
			      offset | PCI_VPD_ADDR_F);

	do {
		FUNC0(pdev, cap + PCI_VPD_ADDR, &offset);
	} while (offset & PCI_VPD_ADDR_F);
}