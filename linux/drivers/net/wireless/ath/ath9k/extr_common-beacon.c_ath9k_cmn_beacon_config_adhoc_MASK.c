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
struct ath_hw {int /*<<< orphan*/  imask; } ;
struct ath_common {int dummy; } ;
struct ath_beacon_config {int /*<<< orphan*/  beacon_interval; int /*<<< orphan*/  intval; int /*<<< orphan*/  nexttbtt; scalar_t__ enable_beacon; scalar_t__ ibss_creator; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH9K_INT_SWBA ; 
 int /*<<< orphan*/  BEACON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ath_common* FUNC2 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_common*,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct ath_hw *ah,
				   struct ath_beacon_config *conf)
{
	struct ath_common *common = FUNC2(ah);

	conf->intval = FUNC0(conf->beacon_interval);

	if (conf->ibss_creator)
		conf->nexttbtt = conf->intval;
	else
		conf->nexttbtt = FUNC1(ah, FUNC3(ah),
					       conf->beacon_interval);

	if (conf->enable_beacon)
		ah->imask |= ATH9K_INT_SWBA;
	else
		ah->imask &= ~ATH9K_INT_SWBA;

	FUNC4(common, BEACON,
		"IBSS (%s) nexttbtt: %u intval: %u conf_intval: %u\n",
		(conf->enable_beacon) ? "Enable" : "Disable",
		conf->nexttbtt, conf->intval, conf->beacon_interval);
}