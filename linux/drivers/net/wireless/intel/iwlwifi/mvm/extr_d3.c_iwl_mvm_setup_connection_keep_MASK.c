#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct iwl_wowlan_status {int /*<<< orphan*/  non_qos_seq_ctr; int /*<<< orphan*/  replay_ctr; TYPE_2__* gtk; scalar_t__ num_of_gtk_rekeys; int /*<<< orphan*/  wakeup_reasons; } ;
struct iwl_mvm_vif {int seqno_valid; scalar_t__ seqno; } ;
struct iwl_mvm_d3_gtk_iter_data {int find_phase; int cipher; int /*<<< orphan*/  last_gtk; int /*<<< orphan*/  num_keys; scalar_t__ unhandled_cipher; struct iwl_wowlan_status* status; struct iwl_mvm* mvm; } ;
struct iwl_mvm {int /*<<< orphan*/  hw; } ;
struct TYPE_3__ {int /*<<< orphan*/  bssid; } ;
struct ieee80211_vif {TYPE_1__ bss_conf; } ;
struct ieee80211_key_conf {int cipher; int keylen; int /*<<< orphan*/  key; int /*<<< orphan*/  keyidx; } ;
typedef  int /*<<< orphan*/  __be64 ;
struct TYPE_4__ {int /*<<< orphan*/  tkip_mic_key; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int IWL_WOWLAN_WAKEUP_BY_DISCONNECTION_ON_DEAUTH ; 
 int IWL_WOWLAN_WAKEUP_BY_DISCONNECTION_ON_MISSED_BEACON ; 
 int /*<<< orphan*/  NL80211_TKIP_DATA_OFFSET_RX_MIC_KEY ; 
#define  WLAN_CIPHER_SUITE_CCMP 129 
#define  WLAN_CIPHER_SUITE_TKIP 128 
 int WLAN_KEY_LEN_CCMP ; 
 int WLAN_KEY_LEN_TKIP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct ieee80211_vif*,struct ieee80211_key_conf*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_vif*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct ieee80211_vif*,int /*<<< orphan*/ ,struct iwl_mvm_d3_gtk_iter_data*) ; 
 int /*<<< orphan*/  iwl_mvm_d3_update_keys ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_mvm*,int /*<<< orphan*/ *,struct iwl_wowlan_status*) ; 
 struct iwl_mvm_vif* FUNC6 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool FUNC12(struct iwl_mvm *mvm,
					  struct ieee80211_vif *vif,
					  struct iwl_wowlan_status *status)
{
	struct iwl_mvm_vif *mvmvif = FUNC6(vif);
	struct iwl_mvm_d3_gtk_iter_data gtkdata = {
		.mvm = mvm,
		.status = status,
	};
	u32 disconnection_reasons =
		IWL_WOWLAN_WAKEUP_BY_DISCONNECTION_ON_MISSED_BEACON |
		IWL_WOWLAN_WAKEUP_BY_DISCONNECTION_ON_DEAUTH;

	if (!status || !vif->bss_conf.bssid)
		return false;

	if (FUNC9(status->wakeup_reasons) & disconnection_reasons)
		return false;

	/* find last GTK that we used initially, if any */
	gtkdata.find_phase = true;
	FUNC4(mvm->hw, vif,
			    iwl_mvm_d3_update_keys, &gtkdata);
	/* not trying to keep connections with MFP/unhandled ciphers */
	if (gtkdata.unhandled_cipher)
		return false;
	if (!gtkdata.num_keys)
		goto out;
	if (!gtkdata.last_gtk)
		return false;

	/*
	 * invalidate all other GTKs that might still exist and update
	 * the one that we used
	 */
	gtkdata.find_phase = false;
	FUNC4(mvm->hw, vif,
			    iwl_mvm_d3_update_keys, &gtkdata);

	if (status->num_of_gtk_rekeys) {
		struct ieee80211_key_conf *key;
		struct {
			struct ieee80211_key_conf conf;
			u8 key[32];
		} conf = {
			.conf.cipher = gtkdata.cipher,
			.conf.keyidx =
				FUNC7(&status->gtk[0]),
		};
		__be64 replay_ctr;

		switch (gtkdata.cipher) {
		case WLAN_CIPHER_SUITE_CCMP:
			conf.conf.keylen = WLAN_KEY_LEN_CCMP;
			FUNC11(conf.conf.key, status->gtk[0].key,
			       WLAN_KEY_LEN_CCMP);
			break;
		case WLAN_CIPHER_SUITE_TKIP:
			conf.conf.keylen = WLAN_KEY_LEN_TKIP;
			FUNC11(conf.conf.key, status->gtk[0].key, 16);
			/* leave TX MIC key zeroed, we don't use it anyway */
			FUNC11(conf.conf.key +
			       NL80211_TKIP_DATA_OFFSET_RX_MIC_KEY,
			       status->gtk[0].tkip_mic_key, 8);
			break;
		}

		key = FUNC2(vif, &conf.conf);
		if (FUNC0(key))
			return false;
		FUNC5(mvm, key, status);

		replay_ctr =
			FUNC1(FUNC10(status->replay_ctr));

		FUNC3(vif, vif->bss_conf.bssid,
					   (void *)&replay_ctr, GFP_KERNEL);
	}

out:
	mvmvif->seqno_valid = true;
	/* +0x10 because the set API expects next-to-use, not last-used */
	mvmvif->seqno = FUNC8(status->non_qos_seq_ctr) + 0x10;

	return true;
}