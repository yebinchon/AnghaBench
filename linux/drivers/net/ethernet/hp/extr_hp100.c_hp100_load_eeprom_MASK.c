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
typedef  int u_short ;
struct net_device {int base_addr; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  EEPROM_CTRL ; 
 int /*<<< orphan*/  HP100_EEPROM_LOAD ; 
 int HP100_EE_LOAD ; 
 int /*<<< orphan*/  OPTION_MSW ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev, u_short probe_ioaddr)
{
	int i;
	int ioaddr = probe_ioaddr > 0 ? probe_ioaddr : dev->base_addr;

#ifdef HP100_DEBUG_B
	hp100_outw(0x4222, TRACE);
#endif

	FUNC4(EEPROM_CTRL);
	FUNC0(~HP100_EEPROM_LOAD, EEPROM_CTRL);
	FUNC2(HP100_EEPROM_LOAD, EEPROM_CTRL);
	for (i = 0; i < 10000; i++)
		if (!(FUNC1(OPTION_MSW) & HP100_EE_LOAD))
			return;
	FUNC5("hp100: %s: hp100_load_eeprom - timeout\n", dev->name);
}