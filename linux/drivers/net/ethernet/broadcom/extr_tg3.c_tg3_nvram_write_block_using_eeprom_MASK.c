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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct tg3 {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EBUSY ; 
 int EEPROM_ADDR_ADDR_MASK ; 
 int EEPROM_ADDR_COMPLETE ; 
 int EEPROM_ADDR_DEVID_MASK ; 
 int EEPROM_ADDR_DEVID_SHIFT ; 
 int EEPROM_ADDR_READ ; 
 int EEPROM_ADDR_START ; 
 int EEPROM_ADDR_WRITE ; 
 int /*<<< orphan*/  GRC_EEPROM_ADDR ; 
 int /*<<< orphan*/  GRC_EEPROM_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct tg3 *tp,
				    u32 offset, u32 len, u8 *buf)
{
	int i, j, rc = 0;
	u32 val;

	for (i = 0; i < len; i += 4) {
		u32 addr;
		__be32 data;

		addr = offset + i;

		FUNC1(&data, buf + i, 4);

		/*
		 * The SEEPROM interface expects the data to always be opposite
		 * the native endian format.  We accomplish this by reversing
		 * all the operations that would have been performed on the
		 * data from a call to tg3_nvram_read_be32().
		 */
		FUNC5(GRC_EEPROM_DATA, FUNC3(FUNC0(data)));

		val = FUNC4(GRC_EEPROM_ADDR);
		FUNC5(GRC_EEPROM_ADDR, val | EEPROM_ADDR_COMPLETE);

		val &= ~(EEPROM_ADDR_ADDR_MASK | EEPROM_ADDR_DEVID_MASK |
			EEPROM_ADDR_READ);
		FUNC5(GRC_EEPROM_ADDR, val |
			(0 << EEPROM_ADDR_DEVID_SHIFT) |
			(addr & EEPROM_ADDR_ADDR_MASK) |
			EEPROM_ADDR_START |
			EEPROM_ADDR_WRITE);

		for (j = 0; j < 1000; j++) {
			val = FUNC4(GRC_EEPROM_ADDR);

			if (val & EEPROM_ADDR_COMPLETE)
				break;
			FUNC2(1);
		}
		if (!(val & EEPROM_ADDR_COMPLETE)) {
			rc = -EBUSY;
			break;
		}
	}

	return rc;
}