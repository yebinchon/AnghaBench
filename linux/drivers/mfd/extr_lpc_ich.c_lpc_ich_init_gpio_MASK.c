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
struct resource {int start; scalar_t__ end; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct lpc_ich_priv {size_t chipset; int /*<<< orphan*/  gbase; int /*<<< orphan*/  abase; } ;
struct TYPE_5__ {int gpio_version; int use_gpio; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; int /*<<< orphan*/  num_resources; } ;

/* Variables and functions */
 scalar_t__ ACPIBASE_GPE_END ; 
 int ACPIBASE_GPE_OFF ; 
 int ENODEV ; 
 size_t ICH_RES_GPE0 ; 
 size_t ICH_RES_GPIO ; 
#define  ICH_V10CORP_GPIO 129 
#define  ICH_V5_GPIO 128 
 int /*<<< orphan*/  PLATFORM_DEVID_AUTO ; 
 int FUNC0 (struct resource*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct resource* gpio_ich_res ; 
 TYPE_3__* lpc_chipset_info ; 
 int FUNC2 (struct resource*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 TYPE_1__ lpc_ich_gpio_cell ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct lpc_ich_priv* FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct pci_dev *dev)
{
	struct lpc_ich_priv *priv = FUNC7(dev);
	u32 base_addr_cfg;
	u32 base_addr;
	int ret;
	bool acpi_conflict = false;
	struct resource *res;

	/* Setup power management base register */
	FUNC8(dev, priv->abase, &base_addr_cfg);
	base_addr = base_addr_cfg & 0x0000ff80;
	if (!base_addr) {
		FUNC1(&dev->dev, "I/O space for ACPI uninitialized\n");
		lpc_ich_gpio_cell.num_resources--;
		goto gpe0_done;
	}

	res = &gpio_ich_res[ICH_RES_GPE0];
	res->start = base_addr + ACPIBASE_GPE_OFF;
	res->end = base_addr + ACPIBASE_GPE_END;
	ret = FUNC0(res);
	if (ret) {
		/*
		 * This isn't fatal for the GPIO, but we have to make sure that
		 * the platform_device subsystem doesn't see this resource
		 * or it will register an invalid region.
		 */
		lpc_ich_gpio_cell.num_resources--;
		acpi_conflict = true;
	} else {
		FUNC3(dev);
	}

gpe0_done:
	/* Setup GPIO base register */
	FUNC8(dev, priv->gbase, &base_addr_cfg);
	base_addr = base_addr_cfg & 0x0000ff80;
	if (!base_addr) {
		FUNC1(&dev->dev, "I/O space for GPIO uninitialized\n");
		ret = -ENODEV;
		goto gpio_done;
	}

	/* Older devices provide fewer GPIO and have a smaller resource size. */
	res = &gpio_ich_res[ICH_RES_GPIO];
	res->start = base_addr;
	switch (lpc_chipset_info[priv->chipset].gpio_version) {
	case ICH_V5_GPIO:
	case ICH_V10CORP_GPIO:
		res->end = res->start + 128 - 1;
		break;
	default:
		res->end = res->start + 64 - 1;
		break;
	}

	ret = FUNC2(res);
	if (ret < 0) {
		/* this isn't necessarily fatal for the GPIO */
		acpi_conflict = true;
		goto gpio_done;
	}
	lpc_chipset_info[priv->chipset].use_gpio = ret;
	FUNC4(dev);

	FUNC5(dev);
	ret = FUNC6(&dev->dev, PLATFORM_DEVID_AUTO,
			      &lpc_ich_gpio_cell, 1, NULL, 0, NULL);

gpio_done:
	if (acpi_conflict)
		FUNC9("Resource conflict(s) found affecting %s\n",
				lpc_ich_gpio_cell.name);
	return ret;
}