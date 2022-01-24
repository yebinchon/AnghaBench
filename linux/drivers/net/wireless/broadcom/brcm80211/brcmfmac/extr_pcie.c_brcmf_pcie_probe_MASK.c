#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  device; int /*<<< orphan*/  vendor; int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {struct brcmf_pciedev_info* pcie; } ;
struct brcmf_pciedev_info {scalar_t__ settings; TYPE_2__* ci; struct brcmf_pciedev_info* msgbuf; int /*<<< orphan*/ * dev; struct pci_dev* pdev; int /*<<< orphan*/  wowl_supported; int /*<<< orphan*/  coreid; int /*<<< orphan*/  chip; int /*<<< orphan*/  proto_type; int /*<<< orphan*/ * ops; TYPE_1__ bus_priv; struct brcmf_pciedev_info* bus; struct brcmf_pciedev_info* devinfo; } ;
struct brcmf_pciedev {scalar_t__ settings; TYPE_2__* ci; struct brcmf_pciedev* msgbuf; int /*<<< orphan*/ * dev; struct pci_dev* pdev; int /*<<< orphan*/  wowl_supported; int /*<<< orphan*/  coreid; int /*<<< orphan*/  chip; int /*<<< orphan*/  proto_type; int /*<<< orphan*/ * ops; TYPE_1__ bus_priv; struct brcmf_pciedev* bus; struct brcmf_pciedev* devinfo; } ;
struct brcmf_fw_request {scalar_t__ settings; TYPE_2__* ci; struct brcmf_fw_request* msgbuf; int /*<<< orphan*/ * dev; struct pci_dev* pdev; int /*<<< orphan*/  wowl_supported; int /*<<< orphan*/  coreid; int /*<<< orphan*/  chip; int /*<<< orphan*/  proto_type; int /*<<< orphan*/ * ops; TYPE_1__ bus_priv; struct brcmf_fw_request* bus; struct brcmf_fw_request* devinfo; } ;
struct brcmf_bus {scalar_t__ settings; TYPE_2__* ci; struct brcmf_bus* msgbuf; int /*<<< orphan*/ * dev; struct pci_dev* pdev; int /*<<< orphan*/  wowl_supported; int /*<<< orphan*/  coreid; int /*<<< orphan*/  chip; int /*<<< orphan*/  proto_type; int /*<<< orphan*/ * ops; TYPE_1__ bus_priv; struct brcmf_bus* bus; struct brcmf_bus* devinfo; } ;
struct TYPE_7__ {int /*<<< orphan*/  chiprev; int /*<<< orphan*/  chip; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRCMF_BUSTYPE_PCIE ; 
 int /*<<< orphan*/  BRCMF_PROTO_MSGBUF ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  PCIE ; 
 int /*<<< orphan*/  PCI_D3hot ; 
 int FUNC1 (TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_2__* FUNC3 (struct brcmf_pciedev_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,struct brcmf_pciedev_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  brcmf_pcie_bus_ops ; 
 int /*<<< orphan*/  brcmf_pcie_buscore_ops ; 
 struct brcmf_pciedev_info* FUNC9 (struct brcmf_pciedev_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct brcmf_pciedev_info*) ; 
 int /*<<< orphan*/  brcmf_pcie_setup ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,struct brcmf_pciedev_info*) ; 
 int /*<<< orphan*/  FUNC13 (struct brcmf_pciedev_info*) ; 
 void* FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct pci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC16(struct pci_dev *pdev, const struct pci_device_id *id)
{
	int ret;
	struct brcmf_fw_request *fwreq;
	struct brcmf_pciedev_info *devinfo;
	struct brcmf_pciedev *pcie_bus_dev;
	struct brcmf_bus *bus;

	FUNC5(PCIE, "Enter %x:%x\n", pdev->vendor, pdev->device);

	ret = -ENOMEM;
	devinfo = FUNC14(sizeof(*devinfo), GFP_KERNEL);
	if (devinfo == NULL)
		return ret;

	devinfo->pdev = pdev;
	pcie_bus_dev = NULL;
	devinfo->ci = FUNC3(devinfo, &brcmf_pcie_buscore_ops);
	if (FUNC0(devinfo->ci)) {
		ret = FUNC1(devinfo->ci);
		devinfo->ci = NULL;
		goto fail;
	}

	pcie_bus_dev = FUNC14(sizeof(*pcie_bus_dev), GFP_KERNEL);
	if (pcie_bus_dev == NULL) {
		ret = -ENOMEM;
		goto fail;
	}

	devinfo->settings = FUNC8(&devinfo->pdev->dev,
						   BRCMF_BUSTYPE_PCIE,
						   devinfo->ci->chip,
						   devinfo->ci->chiprev);
	if (!devinfo->settings) {
		ret = -ENOMEM;
		goto fail;
	}

	bus = FUNC14(sizeof(*bus), GFP_KERNEL);
	if (!bus) {
		ret = -ENOMEM;
		goto fail;
	}
	bus->msgbuf = FUNC14(sizeof(*bus->msgbuf), GFP_KERNEL);
	if (!bus->msgbuf) {
		ret = -ENOMEM;
		FUNC13(bus);
		goto fail;
	}

	/* hook it all together. */
	pcie_bus_dev->devinfo = devinfo;
	pcie_bus_dev->bus = bus;
	bus->dev = &pdev->dev;
	bus->bus_priv.pcie = pcie_bus_dev;
	bus->ops = &brcmf_pcie_bus_ops;
	bus->proto_type = BRCMF_PROTO_MSGBUF;
	bus->chip = devinfo->coreid;
	bus->wowl_supported = FUNC15(pdev, PCI_D3hot);
	FUNC12(&pdev->dev, bus);

	ret = FUNC2(&devinfo->pdev->dev, devinfo->settings);
	if (ret)
		goto fail_bus;

	fwreq = FUNC9(devinfo);
	if (!fwreq) {
		ret = -ENOMEM;
		goto fail_bus;
	}

	ret = FUNC7(bus->dev, fwreq, brcmf_pcie_setup);
	if (ret < 0) {
		FUNC13(fwreq);
		goto fail_bus;
	}
	return 0;

fail_bus:
	FUNC13(bus->msgbuf);
	FUNC13(bus);
fail:
	FUNC6(NULL, "failed %x:%x\n", pdev->vendor, pdev->device);
	FUNC10(devinfo);
	if (devinfo->ci)
		FUNC4(devinfo->ci);
	if (devinfo->settings)
		FUNC11(devinfo->settings);
	FUNC13(pcie_bus_dev);
	FUNC13(devinfo);
	return ret;
}