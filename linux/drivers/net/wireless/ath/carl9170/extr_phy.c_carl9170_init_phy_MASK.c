#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_6__ {int /*<<< orphan*/  hw_counters; } ;
struct ar9170 {TYPE_2__ fw; TYPE_1__* hw; } ;
typedef  enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;
struct TYPE_7__ {int /*<<< orphan*/  reg; int /*<<< orphan*/  _5ghz_20; int /*<<< orphan*/  _2ghz_20; int /*<<< orphan*/  _5ghz_40; int /*<<< orphan*/  _2ghz_40; } ;
struct TYPE_5__ {int /*<<< orphan*/  conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR9170_PWR_REG_PLL_ADDAC ; 
 int FUNC0 (TYPE_3__*) ; 
 int NL80211_BAND_2GHZ ; 
 TYPE_3__* ar5416_phy_init ; 
 int FUNC1 (struct ar9170*,int,int) ; 
 int FUNC2 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 () ; 
 int FUNC7 (struct ar9170*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct ar9170 *ar, enum nl80211_band band)
{
	int i, err;
	u32 val;
	bool is_2ghz = band == NL80211_BAND_2GHZ;
	bool is_40mhz = FUNC8(&ar->hw->conf);

	FUNC4(ar);

	for (i = 0; i < FUNC0(ar5416_phy_init); i++) {
		if (is_40mhz) {
			if (is_2ghz)
				val = ar5416_phy_init[i]._2ghz_40;
			else
				val = ar5416_phy_init[i]._5ghz_40;
		} else {
			if (is_2ghz)
				val = ar5416_phy_init[i]._2ghz_20;
			else
				val = ar5416_phy_init[i]._5ghz_20;
		}

		FUNC3(ar5416_phy_init[i].reg, val);
	}

	FUNC5();
	err = FUNC6();
	if (err)
		return err;

	err = FUNC1(ar, is_2ghz, is_40mhz);
	if (err)
		return err;

	err = FUNC2(ar);
	if (err)
		return err;

	if (!ar->fw.hw_counters) {
		err = FUNC7(ar, AR9170_PWR_REG_PLL_ADDAC,
					 is_2ghz ? 0x5163 : 0x5143);
	}

	return err;
}