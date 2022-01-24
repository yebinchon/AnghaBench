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
struct ath_hw {int power_mode; int chip_fullsleep; int ah_flags; } ;
struct ath_common {int dummy; } ;
typedef  enum ath9k_power_mode { ____Placeholder_ath9k_power_mode } ath9k_power_mode ;

/* Variables and functions */
 int AH_UNPLUGGED ; 
#define  ATH9K_PM_AWAKE 130 
#define  ATH9K_PM_FULL_SLEEP 129 
#define  ATH9K_PM_NETWORK_SLEEP 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  RESET ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*) ; 
 struct ath_common* FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*) ; 
 int FUNC4 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_common*,int /*<<< orphan*/ ,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_common*,char*,int) ; 

bool FUNC9(struct ath_hw *ah, enum ath9k_power_mode mode)
{
	struct ath_common *common = FUNC2(ah);
	int status = true;
	static const char *modes[] = {
		"AWAKE",
		"FULL-SLEEP",
		"NETWORK SLEEP",
		"UNDEFINED"
	};

	if (ah->power_mode == mode)
		return status;

	FUNC7(common, RESET, "%s -> %s\n",
		modes[ah->power_mode], modes[mode]);

	switch (mode) {
	case ATH9K_PM_AWAKE:
		status = FUNC4(ah);
		break;
	case ATH9K_PM_FULL_SLEEP:
		if (FUNC3(ah))
			FUNC1(ah);

		FUNC6(ah);
		ah->chip_fullsleep = true;
		break;
	case ATH9K_PM_NETWORK_SLEEP:
		FUNC5(ah);
		break;
	default:
		FUNC8(common, "Unknown power mode %u\n", mode);
		return false;
	}
	ah->power_mode = mode;

	/*
	 * XXX: If this warning never comes up after a while then
	 * simply keep the ATH_DBG_WARN_ON_ONCE() but make
	 * ath9k_hw_setpower() return type void.
	 */

	if (!(ah->ah_flags & AH_UNPLUGGED))
		FUNC0(!status);

	return status;
}