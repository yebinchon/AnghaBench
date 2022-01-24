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
struct ath_hw {int dummy; } ;
struct ath_common {int dummy; } ;

/* Variables and functions */
 int AR9300_EEPROM_SIZE ; 
 int /*<<< orphan*/  EEPROM ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int,int /*<<< orphan*/ *) ; 
 struct ath_common* FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_common*,int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static bool FUNC4(struct ath_hw *ah, int address, u8 *buffer,
			       int count)
{
	struct ath_common *common = FUNC2(ah);
	int i;

	if ((address < 0) || ((address + count) / 2 > AR9300_EEPROM_SIZE - 1)) {
		FUNC3(common, EEPROM, "eeprom address not in range\n");
		return false;
	}

	/*
	 * Since we're reading the bytes in reverse order from a little-endian
	 * word stream, an even address means we only use the lower half of
	 * the 16-bit word at that address
	 */
	if (address % 2 == 0) {
		if (!FUNC0(ah, address--, buffer++))
			goto error;

		count--;
	}

	for (i = 0; i < count / 2; i++) {
		if (!FUNC1(ah, address, buffer))
			goto error;

		address -= 2;
		buffer += 2;
	}

	if (count % 2)
		if (!FUNC0(ah, address, buffer))
			goto error;

	return true;

error:
	FUNC3(common, EEPROM, "unable to read eeprom region at offset %d\n",
		address);
	return false;
}