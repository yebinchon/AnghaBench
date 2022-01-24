#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int dummy; } ;
struct TYPE_3__ {int app_cap_flags; } ;
struct octeon_device {scalar_t__ app_mode; TYPE_2__* pci_dev; TYPE_1__ fw_info; int /*<<< orphan*/  octeon_id; scalar_t__ watchdog_task; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ CVM_DRV_NIC_APP ; 
 int LIQUIDIO_SWITCHDEV_CAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct octeon_device*) ; 
 struct octeon_device* FUNC7 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC8(struct pci_dev *pdev)
{
	struct octeon_device *oct_dev = FUNC7(pdev);

	FUNC0(&oct_dev->pci_dev->dev, "Stopping device\n");

	if (oct_dev->watchdog_task)
		FUNC2(oct_dev->watchdog_task);

	if (!oct_dev->octeon_id &&
	    oct_dev->fw_info.app_cap_flags & LIQUIDIO_SWITCHDEV_CAP)
		FUNC3();

	if (oct_dev->app_mode && (oct_dev->app_mode == CVM_DRV_NIC_APP))
		FUNC4(oct_dev);

	/* Reset the octeon device and cleanup all memory allocated for
	 * the octeon device by driver.
	 */
	FUNC5(oct_dev);

	FUNC1(&oct_dev->pci_dev->dev, "Device removed\n");

	/* This octeon device has been removed. Update the global
	 * data structure to reflect this. Free the device structure.
	 */
	FUNC6(oct_dev);
}