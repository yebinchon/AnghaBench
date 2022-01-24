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
struct __mem {int addr; int size; } ;
struct TYPE_3__ {struct __mem mem; } ;
struct qlcnic_dump_entry {TYPE_1__ region; } ;
struct qlcnic_adapter {TYPE_2__* ahw; } ;
typedef  int /*<<< orphan*/  __le32 ;
struct TYPE_4__ {int /*<<< orphan*/  pci_func; } ;

/* Variables and functions */
 int FLASH_ROM_DATA ; 
 int /*<<< orphan*/  FLASH_ROM_WINDOW ; 
 int FUNC0 (int) ; 
 int MAX_CTL_CHECK ; 
 int /*<<< orphan*/  QLCNIC_FLASH_LOCK ; 
 int /*<<< orphan*/  QLCNIC_FLASH_LOCK_OWNER ; 
 int /*<<< orphan*/  QLCNIC_FLASH_UNLOCK ; 
 int FUNC1 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct qlcnic_adapter*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct qlcnic_adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static u32 FUNC7(struct qlcnic_adapter *adapter,
			   struct qlcnic_dump_entry *entry, __le32 *buffer)
{
	int i, count = 0;
	u32 fl_addr, size, val, lck_val, addr;
	struct __mem *rom = &entry->region.mem;

	fl_addr = rom->addr;
	size = rom->size / 4;
lock_try:
	lck_val = FUNC1(adapter, QLCNIC_FLASH_LOCK);
	if (!lck_val && count < MAX_CTL_CHECK) {
		FUNC6(10000, 11000);
		count++;
		goto lock_try;
	}
	FUNC2(adapter, QLCNIC_FLASH_LOCK_OWNER,
			    adapter->ahw->pci_func);
	for (i = 0; i < size; i++) {
		addr = fl_addr & 0xFFFF0000;
		FUNC5(adapter, FLASH_ROM_WINDOW, addr);
		addr = FUNC0(fl_addr) + FLASH_ROM_DATA;
		val = FUNC4(adapter, addr);
		fl_addr += 4;
		*buffer++ = FUNC3(val);
	}
	FUNC1(adapter, QLCNIC_FLASH_UNLOCK);
	return rom->size;
}