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
typedef  int /*<<< orphan*/  u16 ;
struct ath_hw {int dummy; } ;
struct ath_common {scalar_t__ ah; } ;

/* Variables and functions */
 int /*<<< orphan*/  AH_WAIT_TIMEOUT ; 
 scalar_t__ AR5416_EEPROM_OFFSET ; 
 int AR5416_EEPROM_S ; 
 scalar_t__ AR_EEPROM_STATUS_DATA ; 
 int AR_EEPROM_STATUS_DATA_BUSY ; 
 int AR_EEPROM_STATUS_DATA_PROT_ACCESS ; 
 int /*<<< orphan*/  AR_EEPROM_STATUS_DATA_VAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(struct ath_common *common, u32 off, u16 *data)
{
	struct ath_hw *ah = (struct ath_hw *) common->ah;

	(void)FUNC1(ah, AR5416_EEPROM_OFFSET + (off << AR5416_EEPROM_S));

	if (!FUNC2(ah,
			   AR_EEPROM_STATUS_DATA,
			   AR_EEPROM_STATUS_DATA_BUSY |
			   AR_EEPROM_STATUS_DATA_PROT_ACCESS, 0,
			   AH_WAIT_TIMEOUT))
		return false;

	*data = FUNC0(FUNC1(ah, AR_EEPROM_STATUS_DATA),
		   AR_EEPROM_STATUS_DATA_VAL);

	return true;
}