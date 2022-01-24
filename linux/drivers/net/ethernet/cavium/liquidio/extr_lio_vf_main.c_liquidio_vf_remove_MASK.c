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
struct pci_dev {int dummy; } ;
struct octeon_device {scalar_t__ app_mode; TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ CVM_DRV_NIC_APP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct octeon_device*) ; 
 struct octeon_device* FUNC5 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC6(struct pci_dev *pdev)
{
	struct octeon_device *oct_dev = FUNC5(pdev);

	FUNC0(&oct_dev->pci_dev->dev, "Stopping device\n");

	if (oct_dev->app_mode == CVM_DRV_NIC_APP)
		FUNC2(oct_dev);

	/* Reset the octeon device and cleanup all memory allocated for
	 * the octeon device by driver.
	 */
	FUNC3(oct_dev);

	FUNC1(&oct_dev->pci_dev->dev, "Device removed\n");

	/* This octeon device has been removed. Update the global
	 * data structure to reflect this. Free the device structure.
	 */
	FUNC4(oct_dev);
}