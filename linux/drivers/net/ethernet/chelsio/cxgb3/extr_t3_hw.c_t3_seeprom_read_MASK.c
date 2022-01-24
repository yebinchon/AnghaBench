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
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_4__ {unsigned int vpd_cap_addr; } ;
struct TYPE_3__ {TYPE_2__ pci; } ;
struct adapter {int /*<<< orphan*/  pdev; TYPE_1__ params; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adapter*,char*,int) ; 
 int EEPROMSIZE ; 
 int EEPROM_MAX_POLL ; 
 int EEPROM_STAT_ADDR ; 
 int EINVAL ; 
 int EIO ; 
 scalar_t__ PCI_VPD_ADDR ; 
 int PCI_VPD_ADDR_F ; 
 scalar_t__ PCI_VPD_DATA ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

int FUNC6(struct adapter *adapter, u32 addr, __le32 *data)
{
	u16 val;
	int attempts = EEPROM_MAX_POLL;
	u32 v;
	unsigned int base = adapter->params.pci.vpd_cap_addr;

	if ((addr >= EEPROMSIZE && addr != EEPROM_STAT_ADDR) || (addr & 3))
		return -EINVAL;

	FUNC4(adapter->pdev, base + PCI_VPD_ADDR, addr);
	do {
		FUNC5(10);
		FUNC3(adapter->pdev, base + PCI_VPD_ADDR, &val);
	} while (!(val & PCI_VPD_ADDR_F) && --attempts);

	if (!(val & PCI_VPD_ADDR_F)) {
		FUNC0(adapter, "reading EEPROM address 0x%x failed\n", addr);
		return -EIO;
	}
	FUNC2(adapter->pdev, base + PCI_VPD_DATA, &v);
	*data = FUNC1(v);
	return 0;
}