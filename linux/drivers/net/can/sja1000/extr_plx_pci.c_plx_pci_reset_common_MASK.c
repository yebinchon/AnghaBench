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
struct plx_pci_card {scalar_t__ conf_addr; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ PLX_CNTRL ; 
 int /*<<< orphan*/  PLX_PCI_RESET ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct plx_pci_card* FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct pci_dev *pdev)
{
	struct plx_pci_card *card = FUNC2(pdev);
	u32 cntrl;

	cntrl = FUNC0(card->conf_addr + PLX_CNTRL);
	cntrl |= PLX_PCI_RESET;
	FUNC1(cntrl, card->conf_addr + PLX_CNTRL);
	FUNC3(100);
	cntrl ^= PLX_PCI_RESET;
	FUNC1(cntrl, card->conf_addr + PLX_CNTRL);
}