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
struct resource {int /*<<< orphan*/  end; int /*<<< orphan*/  start; } ;
struct device {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  irq; struct device dev; } ;
struct mfd_cell {int pdata_size; struct dw_i2c_platform_data* platform_data; scalar_t__ resources; } ;
struct dw_i2c_platform_data {int i2c_scl_freq; } ;
struct dmi_system_id {scalar_t__ driver_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t INTEL_QUARK_IORES_IRQ ; 
 size_t INTEL_QUARK_IORES_MEM ; 
 int /*<<< orphan*/  MFD_I2C_BAR ; 
 struct dw_i2c_platform_data* FUNC0 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct dmi_system_id* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dmi_platform_info ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct pci_dev *pdev, struct mfd_cell *cell)
{
	const struct dmi_system_id *dmi_id;
	struct dw_i2c_platform_data *pdata;
	struct resource *res = (struct resource *)cell->resources;
	struct device *dev = &pdev->dev;

	res[INTEL_QUARK_IORES_MEM].start =
		FUNC3(pdev, MFD_I2C_BAR);
	res[INTEL_QUARK_IORES_MEM].end =
		FUNC2(pdev, MFD_I2C_BAR);

	res[INTEL_QUARK_IORES_IRQ].start = pdev->irq;
	res[INTEL_QUARK_IORES_IRQ].end = pdev->irq;

	pdata = FUNC0(dev, sizeof(*pdata), GFP_KERNEL);
	if (!pdata)
		return -ENOMEM;

	/* Normal mode by default */
	pdata->i2c_scl_freq = 100000;

	dmi_id = FUNC1(dmi_platform_info);
	if (dmi_id)
		pdata->i2c_scl_freq = (uintptr_t)dmi_id->driver_data;

	cell->platform_data = pdata;
	cell->pdata_size = sizeof(*pdata);

	return 0;
}