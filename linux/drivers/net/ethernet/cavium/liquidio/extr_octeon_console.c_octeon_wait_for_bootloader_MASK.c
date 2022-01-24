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
typedef  scalar_t__ u32 ;
struct octeon_device {TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BOOTLOADER_PCI_READ_BUFFER_OWNER_ADDR ; 
 int HZ ; 
 scalar_t__ OCTEON_PCI_IO_BUF_OWNER_HOST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct octeon_device*) ; 
 scalar_t__ FUNC2 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int FUNC4(struct octeon_device *oct,
			       u32 wait_time_hundredths)
{
	FUNC0(&oct->pci_dev->dev, "waiting %d0 ms for bootloader\n",
		wait_time_hundredths);

	if (FUNC1(oct))
		return -1;

	while (wait_time_hundredths > 0 &&
	       FUNC2(oct,
					BOOTLOADER_PCI_READ_BUFFER_OWNER_ADDR)
	       != OCTEON_PCI_IO_BUF_OWNER_HOST) {
		if (--wait_time_hundredths <= 0)
			return -1;
		FUNC3(HZ / 100);
	}
	return 0;
}