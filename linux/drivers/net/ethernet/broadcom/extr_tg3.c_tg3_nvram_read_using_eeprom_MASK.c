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
typedef  int u32 ;
struct tg3 {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EEPROM_ADDR_ADDR_MASK ; 
 int EEPROM_ADDR_ADDR_SHIFT ; 
 int EEPROM_ADDR_COMPLETE ; 
 int EEPROM_ADDR_DEVID_MASK ; 
 int EEPROM_ADDR_DEVID_SHIFT ; 
 int EEPROM_ADDR_READ ; 
 int EEPROM_ADDR_START ; 
 int EINVAL ; 
 int /*<<< orphan*/  GRC_EEPROM_ADDR ; 
 int /*<<< orphan*/  GRC_EEPROM_DATA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct tg3 *tp,
					u32 offset, u32 *val)
{
	u32 tmp;
	int i;

	if (offset > EEPROM_ADDR_ADDR_MASK || (offset % 4) != 0)
		return -EINVAL;

	tmp = FUNC2(GRC_EEPROM_ADDR) & ~(EEPROM_ADDR_ADDR_MASK |
					EEPROM_ADDR_DEVID_MASK |
					EEPROM_ADDR_READ);
	FUNC3(GRC_EEPROM_ADDR,
	     tmp |
	     (0 << EEPROM_ADDR_DEVID_SHIFT) |
	     ((offset << EEPROM_ADDR_ADDR_SHIFT) &
	      EEPROM_ADDR_ADDR_MASK) |
	     EEPROM_ADDR_READ | EEPROM_ADDR_START);

	for (i = 0; i < 1000; i++) {
		tmp = FUNC2(GRC_EEPROM_ADDR);

		if (tmp & EEPROM_ADDR_COMPLETE)
			break;
		FUNC0(1);
	}
	if (!(tmp & EEPROM_ADDR_COMPLETE))
		return -EBUSY;

	tmp = FUNC2(GRC_EEPROM_DATA);

	/*
	 * The data will always be opposite the native endian
	 * format.  Perform a blind byteswap to compensate.
	 */
	*val = FUNC1(tmp);

	return 0;
}