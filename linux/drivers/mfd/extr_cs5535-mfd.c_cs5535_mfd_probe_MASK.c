#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  end; int /*<<< orphan*/  start; int /*<<< orphan*/  flags; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int id; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  IORESOURCE_IO ; 
 TYPE_1__* cs5535_mfd_cells ; 
 struct resource* cs5535_mfd_resources ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ *,int,TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,TYPE_1__*,int) ; 
 TYPE_1__* olpc_acpi_clones ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,int) ; 

__attribute__((used)) static int FUNC10(struct pci_dev *pdev,
		const struct pci_device_id *id)
{
	int err, i;

	err = FUNC7(pdev);
	if (err)
		return err;

	/* fill in IO range for each cell; subdrivers handle the region */
	for (i = 0; i < FUNC0(cs5535_mfd_cells); i++) {
		int bar = cs5535_mfd_cells[i].id;
		struct resource *r = &cs5535_mfd_resources[bar];

		r->flags = IORESOURCE_IO;
		r->start = FUNC9(pdev, bar);
		r->end = FUNC8(pdev, bar);

		/* id is used for temporarily storing BAR; unset it now */
		cs5535_mfd_cells[i].id = 0;
	}

	err = FUNC4(&pdev->dev, -1, cs5535_mfd_cells,
			      FUNC0(cs5535_mfd_cells), NULL, 0, NULL);
	if (err) {
		FUNC1(&pdev->dev, "MFD add devices failed: %d\n", err);
		goto err_disable;
	}

	if (FUNC3())
		FUNC5("cs5535-acpi", olpc_acpi_clones, FUNC0(olpc_acpi_clones));

	FUNC2(&pdev->dev, "%zu devices registered.\n",
			FUNC0(cs5535_mfd_cells));

	return 0;

err_disable:
	FUNC6(pdev);
	return err;
}