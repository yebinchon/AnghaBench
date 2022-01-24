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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {struct brcmf_pciedev_info* pcie; } ;
struct brcmf_pciedev_info {scalar_t__ settings; scalar_t__ ci; struct brcmf_pciedev_info* msgbuf; struct brcmf_pciedev_info* flowrings; TYPE_1__ bus_priv; int /*<<< orphan*/  state; struct brcmf_pciedev_info* devinfo; } ;
struct brcmf_bus {scalar_t__ settings; scalar_t__ ci; struct brcmf_bus* msgbuf; struct brcmf_bus* flowrings; TYPE_1__ bus_priv; int /*<<< orphan*/  state; struct brcmf_bus* devinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMFMAC_PCIE_STATE_DOWN ; 
 int /*<<< orphan*/  PCIE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct brcmf_pciedev_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct brcmf_pciedev_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct brcmf_pciedev_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct brcmf_pciedev_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct brcmf_pciedev_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct brcmf_pciedev_info*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 struct brcmf_pciedev_info* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct brcmf_pciedev_info*) ; 

__attribute__((used)) static void
FUNC14(struct pci_dev *pdev)
{
	struct brcmf_pciedev_info *devinfo;
	struct brcmf_bus *bus;

	FUNC1(PCIE, "Enter\n");

	bus = FUNC11(&pdev->dev);
	if (bus == NULL)
		return;

	devinfo = bus->bus_priv.pcie->devinfo;

	devinfo->state = BRCMFMAC_PCIE_STATE_DOWN;
	if (devinfo->ci)
		FUNC4(devinfo);

	FUNC2(&pdev->dev);
	FUNC3(&pdev->dev);

	FUNC13(bus->bus_priv.pcie);
	FUNC13(bus->msgbuf->flowrings);
	FUNC13(bus->msgbuf);
	FUNC13(bus);

	FUNC5(devinfo);
	FUNC8(devinfo);
	FUNC7(devinfo);
	FUNC9(devinfo);
	FUNC6(devinfo);

	if (devinfo->ci)
		FUNC0(devinfo->ci);
	if (devinfo->settings)
		FUNC10(devinfo->settings);

	FUNC13(devinfo);
	FUNC12(&pdev->dev, NULL);
}