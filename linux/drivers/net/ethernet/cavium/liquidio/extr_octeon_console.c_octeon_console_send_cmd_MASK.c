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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct octeon_device {TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BOOTLOADER_PCI_READ_BUFFER_DATA_ADDR ; 
 int /*<<< orphan*/  BOOTLOADER_PCI_READ_BUFFER_LEN_ADDR ; 
 int /*<<< orphan*/  BOOTLOADER_PCI_READ_BUFFER_OWNER_ADDR ; 
 int BOOTLOADER_PCI_WRITE_BUFFER_STR_LEN ; 
 int OCTEON_PCI_IO_BUF_OWNER_OCTEON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct octeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (struct octeon_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct octeon_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

int FUNC8(struct octeon_device *oct, char *cmd_str,
			    u32 wait_hundredths)
{
	u32 len = (u32)FUNC7(cmd_str);

	FUNC0(&oct->pci_dev->dev, "sending \"%s\" to bootloader\n", cmd_str);

	if (len > BOOTLOADER_PCI_WRITE_BUFFER_STR_LEN - 1) {
		FUNC1(&oct->pci_dev->dev, "Command string too long, max length is: %d\n",
			BOOTLOADER_PCI_WRITE_BUFFER_STR_LEN - 1);
		return -1;
	}

	if (FUNC5(oct, wait_hundredths) != 0) {
		FUNC1(&oct->pci_dev->dev, "Bootloader not ready for command.\n");
		return -1;
	}

	/* Write command to bootloader */
	FUNC3();
	FUNC2(oct, BOOTLOADER_PCI_READ_BUFFER_DATA_ADDR,
				  (u8 *)cmd_str, len);
	FUNC6(oct, BOOTLOADER_PCI_READ_BUFFER_LEN_ADDR,
				  len);
	FUNC6(oct, BOOTLOADER_PCI_READ_BUFFER_OWNER_ADDR,
				  OCTEON_PCI_IO_BUF_OWNER_OCTEON);

	/* Bootloader should accept command very quickly
	 * if it really was ready
	 */
	if (FUNC5(oct, 200) != 0) {
		FUNC4();
		FUNC1(&oct->pci_dev->dev, "Bootloader did not accept command.\n");
		return -1;
	}
	FUNC4();
	return 0;
}