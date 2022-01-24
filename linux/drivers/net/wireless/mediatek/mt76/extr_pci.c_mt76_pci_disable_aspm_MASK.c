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
typedef  int u16 ;
struct pci_dev {int /*<<< orphan*/  dev; TYPE_1__* bus; } ;
struct TYPE_2__ {struct pci_dev* self; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_PCIEASPM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCI_EXP_LNKCTL ; 
 int PCI_EXP_LNKCTL_ASPMC ; 
 int PCI_EXP_LNKCTL_ASPM_L0S ; 
 int PCI_EXP_LNKCTL_ASPM_L1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*,char*) ; 
 int FUNC2 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 

void FUNC5(struct pci_dev *pdev)
{
	struct pci_dev *parent = pdev->bus->self;
	u16 aspm_conf, parent_aspm_conf = 0;

	FUNC4(pdev, PCI_EXP_LNKCTL, &aspm_conf);
	aspm_conf &= PCI_EXP_LNKCTL_ASPMC;
	if (parent) {
		FUNC4(parent, PCI_EXP_LNKCTL,
					  &parent_aspm_conf);
		parent_aspm_conf &= PCI_EXP_LNKCTL_ASPMC;
	}

	if (!aspm_conf && (!parent || !parent_aspm_conf)) {
		/* aspm already disabled */
		return;
	}

	FUNC1(&pdev->dev, "disabling ASPM %s %s\n",
		 (aspm_conf & PCI_EXP_LNKCTL_ASPM_L0S) ? "L0s" : "",
		 (aspm_conf & PCI_EXP_LNKCTL_ASPM_L1) ? "L1" : "");

	if (FUNC0(CONFIG_PCIEASPM)) {
		int err;

		err = FUNC2(pdev, aspm_conf);
		if (!err)
			return;
	}

	/* both device and parent should have the same ASPM setting.
	 * disable ASPM in downstream component first and then upstream.
	 */
	FUNC3(pdev, PCI_EXP_LNKCTL, aspm_conf);
	if (parent)
		FUNC3(parent, PCI_EXP_LNKCTL,
					   aspm_conf);
}