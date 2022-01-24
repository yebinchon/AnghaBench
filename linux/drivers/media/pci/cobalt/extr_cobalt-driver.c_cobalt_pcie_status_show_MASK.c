#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct pci_dev {TYPE_1__* bus; } ;
struct cobalt {struct pci_dev* pci_dev; } ;
struct TYPE_2__ {struct pci_dev* self; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_EXP_DEVCAP ; 
 int PCI_EXP_DEVCAP_PAYLOAD ; 
 int /*<<< orphan*/  PCI_EXP_DEVCTL ; 
 int PCI_EXP_DEVCTL_PAYLOAD ; 
 int PCI_EXP_DEVCTL_READRQ ; 
 int /*<<< orphan*/  PCI_EXP_DEVSTA ; 
 int /*<<< orphan*/  PCI_EXP_LNKCAP ; 
 int PCI_EXP_LNKCAP_MLW ; 
 int /*<<< orphan*/  PCI_EXP_LNKCTL ; 
 int /*<<< orphan*/  PCI_EXP_LNKSTA ; 
 int PCI_EXP_LNKSTA_NLW ; 
 int /*<<< orphan*/  PCI_EXP_SLTCAP ; 
 int /*<<< orphan*/  PCI_EXP_SLTCTL ; 
 int /*<<< orphan*/  PCI_EXP_SLTSTA ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 

void FUNC6(struct cobalt *cobalt)
{
	struct pci_dev *pci_dev = cobalt->pci_dev;
	struct pci_dev *pci_bus_dev = cobalt->pci_dev->bus->self;
	u32 capa;
	u16 stat, ctrl;

	if (!FUNC3(pci_dev) || !FUNC3(pci_bus_dev))
		return;

	/* Device */
	FUNC4(pci_dev, PCI_EXP_DEVCAP, &capa);
	FUNC5(pci_dev, PCI_EXP_DEVCTL, &ctrl);
	FUNC5(pci_dev, PCI_EXP_DEVSTA, &stat);
	FUNC0("PCIe device capability 0x%08x: Max payload %d\n",
		    capa, FUNC2(capa & PCI_EXP_DEVCAP_PAYLOAD));
	FUNC0("PCIe device control 0x%04x: Max payload %d. Max read request %d\n",
		    ctrl,
		    FUNC2((ctrl & PCI_EXP_DEVCTL_PAYLOAD) >> 5),
		    FUNC2((ctrl & PCI_EXP_DEVCTL_READRQ) >> 12));
	FUNC0("PCIe device status 0x%04x\n", stat);

	/* Link */
	FUNC4(pci_dev, PCI_EXP_LNKCAP, &capa);
	FUNC5(pci_dev, PCI_EXP_LNKCTL, &ctrl);
	FUNC5(pci_dev, PCI_EXP_LNKSTA, &stat);
	FUNC0("PCIe link capability 0x%08x: %s per lane and %u lanes\n",
			capa, FUNC1(capa),
			(capa & PCI_EXP_LNKCAP_MLW) >> 4);
	FUNC0("PCIe link control 0x%04x\n", ctrl);
	FUNC0("PCIe link status 0x%04x: %s per lane and %u lanes\n",
		    stat, FUNC1(stat),
		    (stat & PCI_EXP_LNKSTA_NLW) >> 4);

	/* Bus */
	FUNC4(pci_bus_dev, PCI_EXP_LNKCAP, &capa);
	FUNC0("PCIe bus link capability 0x%08x: %s per lane and %u lanes\n",
			capa, FUNC1(capa),
			(capa & PCI_EXP_LNKCAP_MLW) >> 4);

	/* Slot */
	FUNC4(pci_dev, PCI_EXP_SLTCAP, &capa);
	FUNC5(pci_dev, PCI_EXP_SLTCTL, &ctrl);
	FUNC5(pci_dev, PCI_EXP_SLTSTA, &stat);
	FUNC0("PCIe slot capability 0x%08x\n", capa);
	FUNC0("PCIe slot control 0x%04x\n", ctrl);
	FUNC0("PCIe slot status 0x%04x\n", stat);
}