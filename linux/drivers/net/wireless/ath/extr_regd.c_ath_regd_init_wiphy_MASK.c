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
struct wiphy {void (* reg_notifier ) (struct wiphy*,struct regulatory_request*) ;int regulatory_flags; } ;
struct ieee80211_regdomain {int dummy; } ;
struct ath_regulatory {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NL80211_REGDOM_SET_BY_DRIVER ; 
 int REGULATORY_COUNTRY_IE_FOLLOW_POWER ; 
 int REGULATORY_CUSTOM_REG ; 
 int REGULATORY_STRICT_REG ; 
 struct ieee80211_regdomain* FUNC0 () ; 
 scalar_t__ FUNC1 (struct ath_regulatory*) ; 
 int /*<<< orphan*/  FUNC2 (struct wiphy*,struct ath_regulatory*) ; 
 int /*<<< orphan*/  FUNC3 (struct wiphy*,int /*<<< orphan*/ ,struct ath_regulatory*) ; 
 struct ieee80211_regdomain* FUNC4 (struct ath_regulatory*) ; 
 int /*<<< orphan*/  FUNC5 (struct wiphy*,struct ieee80211_regdomain const*) ; 

__attribute__((used)) static int
FUNC6(struct ath_regulatory *reg,
		    struct wiphy *wiphy,
		    void (*reg_notifier)(struct wiphy *wiphy,
					 struct regulatory_request *request))
{
	const struct ieee80211_regdomain *regd;

	wiphy->reg_notifier = reg_notifier;
	wiphy->regulatory_flags |= REGULATORY_STRICT_REG |
				   REGULATORY_CUSTOM_REG;

	if (FUNC1(reg)) {
		/*
		 * Anything applied here (prior to wiphy registration) gets
		 * saved on the wiphy orig_* parameters
		 */
		regd = FUNC4(reg);
		wiphy->regulatory_flags |= REGULATORY_COUNTRY_IE_FOLLOW_POWER;
	} else {
		/*
		 * This gets applied in the case of the absence of CRDA,
		 * it's our own custom world regulatory domain, similar to
		 * cfg80211's but we enable passive scanning.
		 */
		regd = FUNC0();
	}

	FUNC5(wiphy, regd);
	FUNC2(wiphy, reg);
	FUNC3(wiphy, NL80211_REGDOM_SET_BY_DRIVER, reg);
	return 0;
}