#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct resource {scalar_t__ end; scalar_t__ start; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct lpc_ich_priv {size_t chipset; int /*<<< orphan*/  abase; } ;
struct TYPE_5__ {int iTCO_version; } ;
struct TYPE_4__ {int /*<<< orphan*/  num_resources; } ;

/* Variables and functions */
 scalar_t__ ACPIBASE_GCS_END ; 
 scalar_t__ ACPIBASE_GCS_OFF ; 
 scalar_t__ ACPIBASE_PMC_END ; 
 scalar_t__ ACPIBASE_PMC_OFF ; 
 scalar_t__ ACPIBASE_SMI_END ; 
 scalar_t__ ACPIBASE_SMI_OFF ; 
 scalar_t__ ACPIBASE_TCO_END ; 
 scalar_t__ ACPIBASE_TCO_OFF ; 
 int /*<<< orphan*/  ACPICTRL_PMCBASE ; 
 int ENODEV ; 
 int /*<<< orphan*/  ICH_RES_IO_SMI ; 
 int /*<<< orphan*/  ICH_RES_IO_TCO ; 
 int /*<<< orphan*/  ICH_RES_MEM_GCS_PMC ; 
 int /*<<< orphan*/  PLATFORM_DEVID_AUTO ; 
 int /*<<< orphan*/  RCBABASE ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 TYPE_3__* lpc_chipset_info ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int FUNC4 (struct pci_dev*) ; 
 TYPE_1__ lpc_ich_wdt_cell ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct lpc_ich_priv* FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 struct resource* FUNC8 (int /*<<< orphan*/ ) ; 
 struct resource* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct pci_dev *dev)
{
	struct lpc_ich_priv *priv = FUNC6(dev);
	u32 base_addr_cfg;
	u32 base_addr;
	int ret;
	struct resource *res;

	/* If we have ACPI based watchdog use that instead */
	if (FUNC0())
		return -ENODEV;

	/* Setup power management base register */
	FUNC7(dev, priv->abase, &base_addr_cfg);
	base_addr = base_addr_cfg & 0x0000ff80;
	if (!base_addr) {
		FUNC1(&dev->dev, "I/O space for ACPI uninitialized\n");
		ret = -ENODEV;
		goto wdt_done;
	}

	res = FUNC8(ICH_RES_IO_TCO);
	res->start = base_addr + ACPIBASE_TCO_OFF;
	res->end = base_addr + ACPIBASE_TCO_END;

	res = FUNC8(ICH_RES_IO_SMI);
	res->start = base_addr + ACPIBASE_SMI_OFF;
	res->end = base_addr + ACPIBASE_SMI_END;

	FUNC2(dev);

	/*
	 * iTCO v2:
	 * Get the Memory-Mapped GCS register. To get access to it
	 * we have to read RCBA from PCI Config space 0xf0 and use
	 * it as base. GCS = RCBA + ICH6_GCS(0x3410).
	 *
	 * iTCO v3:
	 * Get the Power Management Configuration register.  To get access
	 * to it we have to read the PMC BASE from config space and address
	 * the register at offset 0x8.
	 */
	if (lpc_chipset_info[priv->chipset].iTCO_version == 1) {
		/* Don't register iomem for TCO ver 1 */
		lpc_ich_wdt_cell.num_resources--;
	} else if (lpc_chipset_info[priv->chipset].iTCO_version == 2) {
		FUNC7(dev, RCBABASE, &base_addr_cfg);
		base_addr = base_addr_cfg & 0xffffc000;
		if (!(base_addr_cfg & 1)) {
			FUNC1(&dev->dev, "RCBA is disabled by "
					"hardware/BIOS, device disabled\n");
			ret = -ENODEV;
			goto wdt_done;
		}
		res = FUNC9(ICH_RES_MEM_GCS_PMC);
		res->start = base_addr + ACPIBASE_GCS_OFF;
		res->end = base_addr + ACPIBASE_GCS_END;
	} else if (lpc_chipset_info[priv->chipset].iTCO_version == 3) {
		FUNC3(dev);
		FUNC7(dev, ACPICTRL_PMCBASE, &base_addr_cfg);
		base_addr = base_addr_cfg & 0xfffffe00;

		res = FUNC9(ICH_RES_MEM_GCS_PMC);
		res->start = base_addr + ACPIBASE_PMC_OFF;
		res->end = base_addr + ACPIBASE_PMC_END;
	}

	ret = FUNC4(dev);
	if (ret)
		goto wdt_done;

	ret = FUNC5(&dev->dev, PLATFORM_DEVID_AUTO,
			      &lpc_ich_wdt_cell, 1, NULL, 0, NULL);

wdt_done:
	return ret;
}