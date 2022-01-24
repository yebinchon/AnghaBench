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
struct wiphy {struct ieee80211_supported_band** bands; } ;
struct ieee80211_supported_band {int dummy; } ;
struct brcmf_pub {int dummy; } ;
struct brcmf_if {int dummy; } ;
struct brcmf_cfg80211_info {struct brcmf_pub* pub; } ;
typedef  size_t s32 ;

/* Variables and functions */
 size_t FUNC0 (struct ieee80211_supported_band**) ; 
 int /*<<< orphan*/  INFO ; 
 size_t NL80211_BAND_2GHZ ; 
 size_t NL80211_BAND_5GHZ ; 
 int WLC_BW_20MHZ_BIT ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_pub*,char*,int) ; 
 int FUNC2 (struct brcmf_cfg80211_info*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC4 (struct brcmf_if*,char*,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct brcmf_if*,int*) ; 
 struct brcmf_if* FUNC6 (struct brcmf_pub*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_supported_band*,int*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_supported_band*,int*,int,int,int,int) ; 
 struct wiphy* FUNC9 (struct brcmf_cfg80211_info*) ; 

__attribute__((used)) static int FUNC10(struct brcmf_cfg80211_info *cfg)
{
	struct brcmf_pub *drvr = cfg->pub;
	struct brcmf_if *ifp = FUNC6(drvr, 0);
	struct wiphy *wiphy = FUNC9(cfg);
	u32 nmode = 0;
	u32 vhtmode = 0;
	u32 bw_cap[2] = { WLC_BW_20MHZ_BIT, WLC_BW_20MHZ_BIT };
	u32 rxchain;
	u32 nchain;
	int err;
	s32 i;
	struct ieee80211_supported_band *band;
	u32 txstreams = 0;
	u32 txbf_bfe_cap = 0;
	u32 txbf_bfr_cap = 0;

	(void)FUNC4(ifp, "vhtmode", &vhtmode);
	err = FUNC4(ifp, "nmode", &nmode);
	if (err) {
		FUNC1(drvr, "nmode error (%d)\n", err);
	} else {
		FUNC5(ifp, bw_cap);
	}
	FUNC3(INFO, "nmode=%d, vhtmode=%d, bw_cap=(%d, %d)\n",
		  nmode, vhtmode, bw_cap[NL80211_BAND_2GHZ],
		  bw_cap[NL80211_BAND_5GHZ]);

	err = FUNC4(ifp, "rxchain", &rxchain);
	if (err) {
		FUNC1(drvr, "rxchain error (%d)\n", err);
		nchain = 1;
	} else {
		for (nchain = 0; rxchain; nchain++)
			rxchain = rxchain & (rxchain - 1);
	}
	FUNC3(INFO, "nchain=%d\n", nchain);

	err = FUNC2(cfg, bw_cap);
	if (err) {
		FUNC1(drvr, "brcmf_construct_chaninfo failed (%d)\n", err);
		return err;
	}

	if (vhtmode) {
		(void)FUNC4(ifp, "txstreams", &txstreams);
		(void)FUNC4(ifp, "txbf_bfe_cap",
					      &txbf_bfe_cap);
		(void)FUNC4(ifp, "txbf_bfr_cap",
					      &txbf_bfr_cap);
	}

	for (i = 0; i < FUNC0(wiphy->bands); i++) {
		band = wiphy->bands[i];
		if (band == NULL)
			continue;

		if (nmode)
			FUNC7(band, bw_cap, nchain);
		if (vhtmode)
			FUNC8(band, bw_cap, nchain, txstreams,
					     txbf_bfe_cap, txbf_bfr_cap);
	}

	return 0;
}