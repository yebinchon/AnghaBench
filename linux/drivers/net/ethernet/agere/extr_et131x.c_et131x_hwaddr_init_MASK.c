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
struct et131x_adapter {int /*<<< orphan*/ * rom_addr; int /*<<< orphan*/ * addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct et131x_adapter *adapter)
{
	/* If have our default mac from init and no mac address from
	 * EEPROM then we need to generate the last octet and set it on the
	 * device
	 */
	if (FUNC2(adapter->rom_addr)) {
		/* We need to randomly generate the last octet so we
		 * decrease our chances of setting the mac address to
		 * same as another one of our cards in the system
		 */
		FUNC1(&adapter->addr[5], 1);
		/* We have the default value in the register we are
		 * working with so we need to copy the current
		 * address into the permanent address
		 */
		FUNC0(adapter->rom_addr, adapter->addr);
	} else {
		/* We do not have an override address, so set the
		 * current address to the permanent address and add
		 * it to the device
		 */
		FUNC0(adapter->addr, adapter->rom_addr);
	}
}