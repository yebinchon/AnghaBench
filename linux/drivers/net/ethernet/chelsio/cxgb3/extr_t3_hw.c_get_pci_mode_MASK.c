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
struct pci_params {int width; unsigned short speed; int /*<<< orphan*/  variant; } ;
struct adapter {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_PCIX_MODE ; 
 int F_64BIT ; 
 int FUNC0 (int) ; 
 size_t FUNC1 (int) ; 
 int /*<<< orphan*/  PCI_EXP_LNKSTA ; 
 int /*<<< orphan*/  PCI_VARIANT_PCI ; 
 int /*<<< orphan*/  PCI_VARIANT_PCIE ; 
 int /*<<< orphan*/  PCI_VARIANT_PCIX_266_MODE2 ; 
 int /*<<< orphan*/  PCI_VARIANT_PCIX_MODE1_ECC ; 
 int /*<<< orphan*/  PCI_VARIANT_PCIX_MODE1_PARITY ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC4 (struct adapter*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct adapter *adapter, struct pci_params *p)
{
	static unsigned short speed_map[] = { 33, 66, 100, 133 };
	u32 pci_mode;

	if (FUNC2(adapter->pdev)) {
		u16 val;

		p->variant = PCI_VARIANT_PCIE;
		FUNC3(adapter->pdev, PCI_EXP_LNKSTA, &val);
		p->width = (val >> 4) & 0x3f;
		return;
	}

	pci_mode = FUNC4(adapter, A_PCIX_MODE);
	p->speed = speed_map[FUNC1(pci_mode)];
	p->width = (pci_mode & F_64BIT) ? 64 : 32;
	pci_mode = FUNC0(pci_mode);
	if (pci_mode == 0)
		p->variant = PCI_VARIANT_PCI;
	else if (pci_mode < 4)
		p->variant = PCI_VARIANT_PCIX_MODE1_PARITY;
	else if (pci_mode < 8)
		p->variant = PCI_VARIANT_PCIX_MODE1_ECC;
	else
		p->variant = PCI_VARIANT_PCIX_266_MODE2;
}