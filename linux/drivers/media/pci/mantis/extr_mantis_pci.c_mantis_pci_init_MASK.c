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
typedef  int /*<<< orphan*/  u8 ;
struct pci_dev {int /*<<< orphan*/  irq; int /*<<< orphan*/  subsystem_device; int /*<<< orphan*/  subsystem_vendor; int /*<<< orphan*/  revision; int /*<<< orphan*/  devfn; TYPE_1__* bus; } ;
struct mantis_pci {int /*<<< orphan*/  mmio; int /*<<< orphan*/  mantis_addr; int /*<<< orphan*/  latency; struct pci_dev* pdev; int /*<<< orphan*/  revision; struct mantis_hwconfig* hwconfig; } ;
struct mantis_hwconfig {int /*<<< orphan*/  irq_handler; int /*<<< orphan*/  dev_type; int /*<<< orphan*/  model_name; } ;
struct TYPE_2__ {int /*<<< orphan*/  number; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DRIVER_NAME ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  MANTIS_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCI_LATENCY_TIMER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_dev*,struct mantis_pci*) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mantis_pci*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC17(struct mantis_pci *mantis)
{
	u8 latency;
	struct mantis_hwconfig *config	= mantis->hwconfig;
	struct pci_dev *pdev		= mantis->pdev;
	int err, ret = 0;

	FUNC3(MANTIS_ERROR, 0, "found a %s PCI %s device on (%02x:%02x.%x),\n",
		config->model_name,
		config->dev_type,
		mantis->pdev->bus->number,
		FUNC2(mantis->pdev->devfn),
		FUNC1(mantis->pdev->devfn));

	err = FUNC7(pdev);
	if (err != 0) {
		ret = -ENODEV;
		FUNC3(MANTIS_ERROR, 1, "ERROR: PCI enable failed <%i>", err);
		goto fail0;
	}

	err = FUNC11(pdev, FUNC0(32));
	if (err != 0) {
		FUNC3(MANTIS_ERROR, 1, "ERROR: Unable to obtain 32 bit DMA <%i>", err);
		ret = -ENOMEM;
		goto fail1;
	}

	FUNC13(pdev);

	if (!FUNC16(FUNC10(pdev, 0),
				FUNC9(pdev, 0),
				DRIVER_NAME)) {

		FUNC3(MANTIS_ERROR, 1, "ERROR: BAR0 Request failed !");
		ret = -ENODEV;
		goto fail1;
	}

	mantis->mmio = FUNC4(FUNC10(pdev, 0),
			       FUNC9(pdev, 0));

	if (!mantis->mmio) {
		FUNC3(MANTIS_ERROR, 1, "ERROR: BAR0 remap failed !");
		ret = -ENODEV;
		goto fail2;
	}

	FUNC8(pdev, PCI_LATENCY_TIMER, &latency);
	mantis->latency = latency;
	mantis->revision = pdev->revision;

	FUNC3(MANTIS_ERROR, 0, "    Mantis Rev %d [%04x:%04x], ",
		mantis->revision,
		mantis->pdev->subsystem_vendor,
		mantis->pdev->subsystem_device);

	FUNC3(MANTIS_ERROR, 0,
		"irq: %d, latency: %d\n    memory: 0x%lx, mmio: 0x%p\n",
		mantis->pdev->irq,
		mantis->latency,
		mantis->mantis_addr,
		mantis->mmio);

	err = FUNC15(pdev->irq,
			  config->irq_handler,
			  IRQF_SHARED,
			  DRIVER_NAME,
			  mantis);

	if (err != 0) {

		FUNC3(MANTIS_ERROR, 1, "ERROR: IRQ registration failed ! <%d>", err);
		ret = -ENODEV;
		goto fail3;
	}

	FUNC12(pdev, mantis);
	return ret;

	/* Error conditions */
fail3:
	FUNC3(MANTIS_ERROR, 1, "ERROR: <%d> I/O unmap", ret);
	if (mantis->mmio)
		FUNC5(mantis->mmio);

fail2:
	FUNC3(MANTIS_ERROR, 1, "ERROR: <%d> releasing regions", ret);
	FUNC14(FUNC10(pdev, 0),
			   FUNC9(pdev, 0));

fail1:
	FUNC3(MANTIS_ERROR, 1, "ERROR: <%d> disabling device", ret);
	FUNC6(pdev);

fail0:
	FUNC3(MANTIS_ERROR, 1, "ERROR: <%d> exiting", ret);
	return ret;
}