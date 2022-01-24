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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct ieee80211_vif {size_t addr; scalar_t__ drv_priv; } ;
struct TYPE_2__ {int ampdu_factor; } ;
struct ieee80211_sta {size_t addr; TYPE_1__ ht_cap; scalar_t__ drv_priv; } ;
struct ath_common {size_t curbssid; } ;
struct ath9k_htc_vif {size_t index; } ;
struct ath9k_htc_target_sta {int is_vif_sta; int sta_index; size_t vif_index; void* maxampdu; int /*<<< orphan*/  macaddr; int /*<<< orphan*/  bssid; } ;
struct ath9k_htc_sta {int index; } ;
struct ath9k_htc_priv {int nstations; int sta_slot; int* vif_sta_pos; int /*<<< orphan*/  ah; } ;

/* Variables and functions */
 int ATH9K_HTC_MAX_STA ; 
 int /*<<< orphan*/  CONFIG ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int IEEE80211_HT_MAX_AMPDU_FACTOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ath9k_htc_target_sta*) ; 
 int /*<<< orphan*/  WMI_NODE_CREATE_CMDID ; 
 struct ath_common* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_common*,int /*<<< orphan*/ ,char*,size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_common*,char*,size_t) ; 
 void* FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ath9k_htc_target_sta*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct ath9k_htc_priv *priv,
				 struct ieee80211_vif *vif,
				 struct ieee80211_sta *sta)
{
	struct ath_common *common = FUNC1(priv->ah);
	struct ath9k_htc_target_sta tsta;
	struct ath9k_htc_vif *avp = (struct ath9k_htc_vif *) vif->drv_priv;
	struct ath9k_htc_sta *ista;
	int ret, sta_idx;
	u8 cmd_rsp;
	u16 maxampdu;

	if (priv->nstations >= ATH9K_HTC_MAX_STA)
		return -ENOBUFS;

	sta_idx = FUNC5(priv->sta_slot);
	if ((sta_idx < 0) || (sta_idx > ATH9K_HTC_MAX_STA))
		return -ENOBUFS;

	FUNC7(&tsta, 0, sizeof(struct ath9k_htc_target_sta));

	if (sta) {
		ista = (struct ath9k_htc_sta *) sta->drv_priv;
		FUNC6(&tsta.macaddr, sta->addr, ETH_ALEN);
		FUNC6(&tsta.bssid, common->curbssid, ETH_ALEN);
		ista->index = sta_idx;
		tsta.is_vif_sta = 0;
		maxampdu = 1 << (IEEE80211_HT_MAX_AMPDU_FACTOR +
				 sta->ht_cap.ampdu_factor);
		tsta.maxampdu = FUNC4(maxampdu);
	} else {
		FUNC6(&tsta.macaddr, vif->addr, ETH_ALEN);
		tsta.is_vif_sta = 1;
		tsta.maxampdu = FUNC4(0xffff);
	}

	tsta.sta_index = sta_idx;
	tsta.vif_index = avp->index;

	FUNC0(WMI_NODE_CREATE_CMDID, &tsta);
	if (ret) {
		if (sta)
			FUNC3(common,
				"Unable to add station entry for: %pM\n",
				sta->addr);
		return ret;
	}

	if (sta) {
		FUNC2(common, CONFIG,
			"Added a station entry for: %pM (idx: %d)\n",
			sta->addr, tsta.sta_index);
	} else {
		FUNC2(common, CONFIG,
			"Added a station entry for VIF %d (idx: %d)\n",
			avp->index, tsta.sta_index);
	}

	priv->sta_slot |= (1 << sta_idx);
	priv->nstations++;
	if (!sta)
		priv->vif_sta_pos[avp->index] = sta_idx;

	return 0;
}