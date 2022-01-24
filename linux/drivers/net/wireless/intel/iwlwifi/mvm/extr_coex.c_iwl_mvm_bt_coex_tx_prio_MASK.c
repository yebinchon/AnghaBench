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
typedef  int u8 ;
struct iwl_mvm {int bt_tx_prio; } ;
struct ieee80211_tx_info {scalar_t__ band; } ;
struct ieee80211_hdr {int /*<<< orphan*/  addr1; int /*<<< orphan*/  frame_control; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
#define  IEEE80211_AC_BE 130 
#define  IEEE80211_AC_VI 129 
#define  IEEE80211_AC_VO 128 
 scalar_t__ NL80211_BAND_2GHZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct iwl_mvm*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 

u8 FUNC9(struct iwl_mvm *mvm, struct ieee80211_hdr *hdr,
			   struct ieee80211_tx_info *info, u8 ac)
{
	__le16 fc = hdr->frame_control;
	bool mplut_enabled = FUNC6(mvm);

	if (info->band != NL80211_BAND_2GHZ)
		return 0;

	if (FUNC8(mvm->bt_tx_prio))
		return mvm->bt_tx_prio - 1;

	if (FUNC7(FUNC1(fc))) {
		if (FUNC7(FUNC2(fc))) {
			switch (ac) {
			case IEEE80211_AC_BE:
				return mplut_enabled ? 1 : 0;
			case IEEE80211_AC_VI:
				return mplut_enabled ? 2 : 3;
			case IEEE80211_AC_VO:
				return 3;
			default:
				return 0;
			}
		} else if (FUNC5(hdr->addr1)) {
			return 3;
		} else
			return 0;
	} else if (FUNC4(fc)) {
		return FUNC3(fc) ? 0 : 3;
	} else if (FUNC0(fc)) {
		/* ignore cfend and cfendack frames as we never send those */
		return 3;
	}

	return 0;
}