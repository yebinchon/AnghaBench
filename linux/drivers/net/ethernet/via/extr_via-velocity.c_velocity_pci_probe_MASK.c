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
struct velocity_info_tbl {int dummy; } ;
struct pci_device_id {size_t driver_data; } ;
struct pci_dev {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_PCI ; 
 int /*<<< orphan*/  VELOCITY_NAME ; 
 struct velocity_info_tbl* chip_info_table ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*) ; 
 int FUNC4 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct velocity_info_tbl const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct pci_dev *pdev,
			       const struct pci_device_id *ent)
{
	const struct velocity_info_tbl *info =
					&chip_info_table[ent->driver_data];
	int ret;

	ret = FUNC2(pdev);
	if (ret < 0)
		return ret;

	ret = FUNC4(pdev, VELOCITY_NAME);
	if (ret < 0) {
		FUNC0(&pdev->dev, "No PCI resources.\n");
		goto fail1;
	}

	ret = FUNC5(&pdev->dev, pdev->irq, info, BUS_PCI);
	if (ret == 0)
		return 0;

	FUNC3(pdev);
fail1:
	FUNC1(pdev);
	return ret;
}