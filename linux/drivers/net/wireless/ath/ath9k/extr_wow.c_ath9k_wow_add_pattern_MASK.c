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
struct cfg80211_wowlan {size_t n_patterns; struct cfg80211_pkt_pattern* patterns; } ;
struct cfg80211_pkt_pattern {int pattern_len; int /*<<< orphan*/  mask; int /*<<< orphan*/  pattern; } ;
struct ath_softc {struct ath_hw* sc_ah; } ;
struct ath_hw {int dummy; } ;
typedef  size_t s8 ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int MAX_PATTERN_SIZE ; 
 int FUNC1 (struct ath_hw*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct ath_softc *sc,
				 struct cfg80211_wowlan *wowlan)
{
	struct ath_hw *ah = sc->sc_ah;
	struct cfg80211_pkt_pattern *patterns = wowlan->patterns;
	u8 wow_pattern[MAX_PATTERN_SIZE];
	u8 wow_mask[MAX_PATTERN_SIZE];
	int mask_len, ret = 0;
	s8 i = 0;

	for (i = 0; i < wowlan->n_patterns; i++) {
		mask_len = FUNC0(patterns[i].pattern_len, 8);
		FUNC3(wow_pattern, 0, MAX_PATTERN_SIZE);
		FUNC3(wow_mask, 0, MAX_PATTERN_SIZE);
		FUNC2(wow_pattern, patterns[i].pattern, patterns[i].pattern_len);
		FUNC2(wow_mask, patterns[i].mask, mask_len);

		ret = FUNC1(ah,
						 wow_pattern,
						 wow_mask,
						 i + 2,
						 patterns[i].pattern_len);
		if (ret)
			break;
	}

	return ret;
}