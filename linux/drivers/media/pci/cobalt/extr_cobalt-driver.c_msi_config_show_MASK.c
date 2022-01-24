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
typedef  int u16 ;
struct pci_dev {int dummy; } ;
struct cobalt {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int,int*) ; 

__attribute__((used)) static void FUNC3(struct cobalt *cobalt, struct pci_dev *pci_dev)
{
	u16 ctrl, data;
	u32 adrs_l, adrs_h;

	FUNC2(pci_dev, 0x52, &ctrl);
	FUNC0("MSI %s\n", ctrl & 1 ? "enable" : "disable");
	FUNC0("MSI multiple message: Capable %u. Enable %u\n",
		    (1 << ((ctrl >> 1) & 7)), (1 << ((ctrl >> 4) & 7)));
	if (ctrl & 0x80)
		FUNC0("MSI: 64-bit address capable\n");
	FUNC1(pci_dev, 0x54, &adrs_l);
	FUNC1(pci_dev, 0x58, &adrs_h);
	FUNC2(pci_dev, 0x5c, &data);
	if (ctrl & 0x80)
		FUNC0("MSI: Address 0x%08x%08x. Data 0x%04x\n",
				adrs_h, adrs_l, data);
	else
		FUNC0("MSI: Address 0x%08x. Data 0x%04x\n",
				adrs_l, data);
}