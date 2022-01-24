#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mantis_pci {int /*<<< orphan*/  mantis_mmio; int /*<<< orphan*/  mantis_addr; int /*<<< orphan*/  latency; TYPE_3__* pdev; int /*<<< orphan*/  subsystem_device; int /*<<< orphan*/  subsystem_vendor; int /*<<< orphan*/  revision; TYPE_1__* hwconfig; } ;
struct TYPE_6__ {int /*<<< orphan*/  irq; int /*<<< orphan*/  devfn; TYPE_2__* bus; } ;
struct TYPE_5__ {int /*<<< orphan*/  number; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev_type; int /*<<< orphan*/  model_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  MANTIS_DEBUG ; 
 int /*<<< orphan*/  MANTIS_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,...) ; 
 int FUNC3 (struct mantis_pci*) ; 
 int FUNC4 (struct mantis_pci*) ; 
 int FUNC5 (struct mantis_pci*) ; 
 int FUNC6 (struct mantis_pci*) ; 
 int /*<<< orphan*/  FUNC7 (struct mantis_pci*) ; 
 int FUNC8 (struct mantis_pci*) ; 
 int /*<<< orphan*/  verbose ; 

int FUNC9(struct mantis_pci *mantis)
{
	int err = 0;

	FUNC7(mantis);
	FUNC2(verbose, MANTIS_ERROR, 0, "found a %s PCI %s device on (%02x:%02x.%x),\n",
		mantis->hwconfig->model_name, mantis->hwconfig->dev_type,
		mantis->pdev->bus->number, FUNC1(mantis->pdev->devfn), FUNC0(mantis->pdev->devfn));
	FUNC2(verbose, MANTIS_ERROR, 0, "    Mantis Rev %d [%04x:%04x], ",
		mantis->revision,
		mantis->subsystem_vendor, mantis->subsystem_device);
	FUNC2(verbose, MANTIS_ERROR, 0,
		"irq: %d, latency: %d\n    memory: 0x%lx, mmio: 0x%p\n",
		mantis->pdev->irq, mantis->latency,
		mantis->mantis_addr, mantis->mantis_mmio);

	err = FUNC6(mantis);
	if (err < 0) {
		FUNC2(verbose, MANTIS_ERROR, 1, "Mantis I2C init failed");
		return err;
	}
	err = FUNC3(mantis);
	if (err < 0) {
		FUNC2(verbose, MANTIS_ERROR, 1, "get MAC address failed");
		return err;
	}
	err = FUNC4(mantis);
	if (err < 0) {
		FUNC2(verbose, MANTIS_ERROR, 1, "Mantis DMA init failed");
		return err;
	}
	err = FUNC5(mantis);
	if (err < 0) {
		FUNC2(verbose, MANTIS_DEBUG, 1, "Mantis DVB init failed");
		return err;
	}
	err = FUNC8(mantis);
	if (err < 0) {
		FUNC2(verbose, MANTIS_DEBUG, 1, "Mantis UART init failed");
		return err;
	}

	return 0;
}