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
typedef  int u8 ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CX88X_DEVCTRL ; 
 int CX88X_EN_TBFX ; 
 int CX88X_EN_VSFX ; 
 int PCIPCI_ALIMAGIK ; 
 int PCIPCI_NATOMA ; 
 int PCIPCI_TRITON ; 
 int PCIPCI_VIAETBF ; 
 int PCIPCI_VSFX ; 
 int /*<<< orphan*/  PCI_LATENCY_TIMER ; 
 unsigned int UNSET ; 
 unsigned int latency ; 
 int pci_pci_problems ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static int FUNC3(const char *name, struct pci_dev *pci)
{
	unsigned int lat = UNSET;
	u8 ctrl = 0;
	u8 value;

	/* check pci quirks */
	if (pci_pci_problems & PCIPCI_TRITON) {
		FUNC2("quirk: PCIPCI_TRITON -- set TBFX\n");
		ctrl |= CX88X_EN_TBFX;
	}
	if (pci_pci_problems & PCIPCI_NATOMA) {
		FUNC2("quirk: PCIPCI_NATOMA -- set TBFX\n");
		ctrl |= CX88X_EN_TBFX;
	}
	if (pci_pci_problems & PCIPCI_VIAETBF) {
		FUNC2("quirk: PCIPCI_VIAETBF -- set TBFX\n");
		ctrl |= CX88X_EN_TBFX;
	}
	if (pci_pci_problems & PCIPCI_VSFX) {
		FUNC2("quirk: PCIPCI_VSFX -- set VSFX\n");
		ctrl |= CX88X_EN_VSFX;
	}
#ifdef PCIPCI_ALIMAGIK
	if (pci_pci_problems & PCIPCI_ALIMAGIK) {
		pr_info("quirk: PCIPCI_ALIMAGIK -- latency fixup\n");
		lat = 0x0A;
	}
#endif

	/* check insmod options */
	if (latency != UNSET)
		lat = latency;

	/* apply stuff */
	if (ctrl) {
		FUNC0(pci, CX88X_DEVCTRL, &value);
		value |= ctrl;
		FUNC1(pci, CX88X_DEVCTRL, value);
	}
	if (lat != UNSET) {
		FUNC2("setting pci latency timer to %d\n", latency);
		FUNC1(pci, PCI_LATENCY_TIMER, latency);
	}
	return 0;
}