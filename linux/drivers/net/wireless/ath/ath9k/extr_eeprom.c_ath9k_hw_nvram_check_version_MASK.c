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
struct ath_hw {TYPE_1__* eep_ops; } ;
struct ath_common {int dummy; } ;
struct TYPE_2__ {int (* get_eeprom_ver ) (struct ath_hw*) ;int (* get_eeprom_rev ) (struct ath_hw*) ;} ;

/* Variables and functions */
 struct ath_common* FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_common*,char*,int,int) ; 
 int FUNC2 (struct ath_hw*) ; 
 int FUNC3 (struct ath_hw*) ; 
 int FUNC4 (struct ath_hw*) ; 
 int FUNC5 (struct ath_hw*) ; 

bool FUNC6(struct ath_hw *ah, int version, int minrev)
{
	struct ath_common *common = FUNC0(ah);

	if (ah->eep_ops->get_eeprom_ver(ah) != version ||
	    ah->eep_ops->get_eeprom_rev(ah) < minrev) {
		FUNC1(common, "Bad EEPROM VER 0x%04x or REV 0x%04x\n",
			ah->eep_ops->get_eeprom_ver(ah),
			ah->eep_ops->get_eeprom_rev(ah));
		return false;
	}

	return true;
}