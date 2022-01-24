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
typedef  scalar_t__ u16 ;
struct ath_common {scalar_t__ ah; } ;
struct ath5k_hw {scalar_t__ ah_version; } ;

/* Variables and functions */
 scalar_t__ AR5K_AR5210 ; 
 scalar_t__ AR5K_EEPROM_BASE ; 
 int /*<<< orphan*/  AR5K_EEPROM_CMD ; 
 int /*<<< orphan*/  AR5K_EEPROM_CMD_READ ; 
 scalar_t__ AR5K_EEPROM_DATA ; 
 scalar_t__ AR5K_EEPROM_STATUS ; 
 int AR5K_EEPROM_STAT_RDDONE ; 
 int AR5K_EEPROM_STAT_RDERR ; 
 int /*<<< orphan*/  AR5K_PCICFG ; 
 int /*<<< orphan*/  AR5K_PCICFG_EEAE ; 
 int /*<<< orphan*/  FUNC0 (struct ath5k_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int AR5K_TUNE_REGISTER_TIMEOUT ; 
 int FUNC1 (struct ath5k_hw*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ath5k_hw*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static bool
FUNC4(struct ath_common *common, u32 offset, u16 *data)
{
	struct ath5k_hw *ah = (struct ath5k_hw *) common->ah;
	u32 status, timeout;

	/*
	 * Initialize EEPROM access
	 */
	if (ah->ah_version == AR5K_AR5210) {
		FUNC0(ah, AR5K_PCICFG, AR5K_PCICFG_EEAE);
		(void)FUNC1(ah, AR5K_EEPROM_BASE + (4 * offset));
	} else {
		FUNC2(ah, offset, AR5K_EEPROM_BASE);
		FUNC0(ah, AR5K_EEPROM_CMD,
				AR5K_EEPROM_CMD_READ);
	}

	for (timeout = AR5K_TUNE_REGISTER_TIMEOUT; timeout > 0; timeout--) {
		status = FUNC1(ah, AR5K_EEPROM_STATUS);
		if (status & AR5K_EEPROM_STAT_RDDONE) {
			if (status & AR5K_EEPROM_STAT_RDERR)
				return false;
			*data = (u16)(FUNC1(ah, AR5K_EEPROM_DATA) &
					0xffff);
			return true;
		}
		FUNC3(15, 20);
	}

	return false;
}