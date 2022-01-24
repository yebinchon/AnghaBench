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
typedef  int u16 ;

/* Variables and functions */
 int IEEE80211_VHT_MCS_NOT_SUPPORTED ; 
 int IEEE80211_VHT_MCS_SUPPORT_0_7 ; 
 int IEEE80211_VHT_MCS_SUPPORT_0_8 ; 
 int IEEE80211_VHT_MCS_SUPPORT_0_9 ; 
 int NL80211_VHT_NSS_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int const FUNC1 (int,int) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static u16
FUNC3(u16 tx_mcs_set,
			      const u16 vht_mcs_limit[NL80211_VHT_NSS_MAX])
{
	int idx_limit;
	int nss;
	u16 mcs_map;
	u16 mcs;

	for (nss = 0; nss < NL80211_VHT_NSS_MAX; nss++) {
		mcs_map = FUNC1(tx_mcs_set, nss) &
			  vht_mcs_limit[nss];

		if (mcs_map)
			idx_limit = FUNC2(mcs_map) - 1;
		else
			idx_limit = -1;

		switch (idx_limit) {
		case 0: /* fall through */
		case 1: /* fall through */
		case 2: /* fall through */
		case 3: /* fall through */
		case 4: /* fall through */
		case 5: /* fall through */
		case 6: /* fall through */
		default:
			/* see ath10k_mac_can_set_bitrate_mask() */
			FUNC0(1);
			/* fall through */
		case -1:
			mcs = IEEE80211_VHT_MCS_NOT_SUPPORTED;
			break;
		case 7:
			mcs = IEEE80211_VHT_MCS_SUPPORT_0_7;
			break;
		case 8:
			mcs = IEEE80211_VHT_MCS_SUPPORT_0_8;
			break;
		case 9:
			mcs = IEEE80211_VHT_MCS_SUPPORT_0_9;
			break;
		}

		tx_mcs_set &= ~(0x3 << (nss * 2));
		tx_mcs_set |= mcs << (nss * 2);
	}

	return tx_mcs_set;
}