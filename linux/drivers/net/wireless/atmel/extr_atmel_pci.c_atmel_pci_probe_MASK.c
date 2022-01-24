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
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  dev; TYPE_1__* resource; int /*<<< orphan*/  irq; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATMEL_FW_TYPE_506 ; 
 int ENODEV ; 
 struct net_device* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 scalar_t__ FUNC2 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC5(struct pci_dev *pdev,
				     const struct pci_device_id *pent)
{
	struct net_device *dev;

	if (FUNC2(pdev))
		return -ENODEV;

	FUNC4(pdev);

	dev = FUNC0(pdev->irq, pdev->resource[1].start,
			      ATMEL_FW_TYPE_506,
			      &pdev->dev, NULL, NULL);
	if (!dev) {
		FUNC1(pdev);
		return -ENODEV;
	}

	FUNC3(pdev, dev);
	return 0;
}