#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  void* u8 ;
struct iwl_mvm_vif {struct ieee80211_key_conf** ap_early_keys; int /*<<< orphan*/  ap_ibss_active; } ;
struct iwl_mvm_sta {int /*<<< orphan*/ * ptk_pn; } ;
struct iwl_mvm_key_pn {TYPE_4__* q; } ;
struct iwl_mvm {int /*<<< orphan*/  mutex; int /*<<< orphan*/  status; TYPE_3__* trans; } ;
struct ieee80211_vif {int /*<<< orphan*/  type; } ;
struct ieee80211_sta {int dummy; } ;
struct TYPE_11__ {int /*<<< orphan*/  pn; } ;
struct ieee80211_key_seq {TYPE_5__ ccmp; } ;
struct ieee80211_key_conf {int keyidx; int cipher; int flags; void* hw_key_idx; } ;
struct ieee80211_hw {TYPE_2__* cipher_schemes; int /*<<< orphan*/  n_cipher_schemes; } ;
typedef  enum set_key_cmd { ____Placeholder_set_key_cmd } set_key_cmd ;
struct TYPE_12__ {scalar_t__ swcrypto; } ;
struct TYPE_10__ {int /*<<< orphan*/ * pn; } ;
struct TYPE_9__ {int num_rx_queues; TYPE_1__* trans_cfg; } ;
struct TYPE_8__ {int cipher; } ;
struct TYPE_7__ {int /*<<< orphan*/  gen2; } ;

/* Variables and functions */
 int FUNC0 (struct ieee80211_key_conf**) ; 
#define  DISABLE_KEY 138 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IEEE80211_CCMP_PN_LEN ; 
 int IEEE80211_KEY_FLAG_GENERATE_MMIC ; 
 int IEEE80211_KEY_FLAG_PAIRWISE ; 
 int IEEE80211_KEY_FLAG_PUT_IV_SPACE ; 
 int IEEE80211_KEY_FLAG_PUT_MIC_SPACE ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*) ; 
 struct iwl_mvm* FUNC2 (struct ieee80211_hw*) ; 
 int IWL_MAX_TID_COUNT ; 
 int /*<<< orphan*/  IWL_MVM_STATUS_IN_HW_RESTART ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_mvm*,char*) ; 
 int /*<<< orphan*/  MFP_CAPABLE ; 
 int /*<<< orphan*/  NL80211_IFTYPE_ADHOC ; 
 int /*<<< orphan*/  NL80211_IFTYPE_AP ; 
 int /*<<< orphan*/  NL80211_IFTYPE_STATION ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
#define  SET_KEY 137 
 void* STA_KEY_IDX_INVALID ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
#define  WLAN_CIPHER_SUITE_AES_CMAC 136 
#define  WLAN_CIPHER_SUITE_BIP_GMAC_128 135 
#define  WLAN_CIPHER_SUITE_BIP_GMAC_256 134 
#define  WLAN_CIPHER_SUITE_CCMP 133 
#define  WLAN_CIPHER_SUITE_GCMP 132 
#define  WLAN_CIPHER_SUITE_GCMP_256 131 
#define  WLAN_CIPHER_SUITE_TKIP 130 
#define  WLAN_CIPHER_SUITE_WEP104 129 
#define  WLAN_CIPHER_SUITE_WEP40 128 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_key_conf*,int,struct ieee80211_key_seq*) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC10 (struct iwl_mvm*) ; 
 int FUNC11 (struct iwl_mvm*,struct ieee80211_vif*,struct ieee80211_sta*,struct ieee80211_key_conf*) ; 
 int FUNC12 (struct iwl_mvm*,struct ieee80211_vif*,struct ieee80211_sta*,struct ieee80211_key_conf*,void*) ; 
 struct iwl_mvm_sta* FUNC13 (struct ieee80211_sta*) ; 
 struct iwl_mvm_vif* FUNC14 (struct ieee80211_vif*) ; 
 TYPE_6__ iwlwifi_mod_params ; 
 int /*<<< orphan*/  FUNC15 (struct iwl_mvm_key_pn*,int /*<<< orphan*/ ) ; 
 struct iwl_mvm_key_pn* FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,struct iwl_mvm_key_pn*) ; 
 struct iwl_mvm_key_pn* FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu_head ; 
 int /*<<< orphan*/  FUNC22 (struct iwl_mvm_key_pn*,int,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC24(struct ieee80211_hw *hw,
				 enum set_key_cmd cmd,
				 struct ieee80211_vif *vif,
				 struct ieee80211_sta *sta,
				 struct ieee80211_key_conf *key)
{
	struct iwl_mvm_vif *mvmvif = FUNC14(vif);
	struct iwl_mvm *mvm = FUNC2(hw);
	struct iwl_mvm_sta *mvmsta;
	struct iwl_mvm_key_pn *ptk_pn;
	int keyidx = key->keyidx;
	int ret, i;
	u8 key_offset;

	if (iwlwifi_mod_params.swcrypto) {
		FUNC1(mvm, "leave - hwcrypto disabled\n");
		return -EOPNOTSUPP;
	}

	switch (key->cipher) {
	case WLAN_CIPHER_SUITE_TKIP:
		if (!mvm->trans->trans_cfg->gen2) {
			key->flags |= IEEE80211_KEY_FLAG_GENERATE_MMIC;
			key->flags |= IEEE80211_KEY_FLAG_PUT_IV_SPACE;
		} else if (vif->type == NL80211_IFTYPE_STATION) {
			key->flags |= IEEE80211_KEY_FLAG_PUT_MIC_SPACE;
		} else {
			FUNC1(mvm, "Use SW encryption for TKIP\n");
			return -EOPNOTSUPP;
		}
		break;
	case WLAN_CIPHER_SUITE_CCMP:
	case WLAN_CIPHER_SUITE_GCMP:
	case WLAN_CIPHER_SUITE_GCMP_256:
		if (!FUNC10(mvm))
			key->flags |= IEEE80211_KEY_FLAG_PUT_IV_SPACE;
		break;
	case WLAN_CIPHER_SUITE_AES_CMAC:
	case WLAN_CIPHER_SUITE_BIP_GMAC_128:
	case WLAN_CIPHER_SUITE_BIP_GMAC_256:
		FUNC6(!FUNC8(hw, MFP_CAPABLE));
		break;
	case WLAN_CIPHER_SUITE_WEP40:
	case WLAN_CIPHER_SUITE_WEP104:
		if (vif->type == NL80211_IFTYPE_STATION)
			break;
		if (FUNC10(mvm))
			return -EOPNOTSUPP;
		/* support HW crypto on TX */
		return 0;
	default:
		/* currently FW supports only one optional cipher scheme */
		if (hw->n_cipher_schemes &&
		    hw->cipher_schemes->cipher == key->cipher)
			key->flags |= IEEE80211_KEY_FLAG_PUT_IV_SPACE;
		else
			return -EOPNOTSUPP;
	}

	switch (cmd) {
	case SET_KEY:
		if ((vif->type == NL80211_IFTYPE_ADHOC ||
		     vif->type == NL80211_IFTYPE_AP) && !sta) {
			/*
			 * GTK on AP interface is a TX-only key, return 0;
			 * on IBSS they're per-station and because we're lazy
			 * we don't support them for RX, so do the same.
			 * CMAC/GMAC in AP/IBSS modes must be done in software.
			 */
			if (key->cipher == WLAN_CIPHER_SUITE_AES_CMAC ||
			    key->cipher == WLAN_CIPHER_SUITE_BIP_GMAC_128 ||
			    key->cipher == WLAN_CIPHER_SUITE_BIP_GMAC_256)
				ret = -EOPNOTSUPP;
			else
				ret = 0;

			if (key->cipher != WLAN_CIPHER_SUITE_GCMP &&
			    key->cipher != WLAN_CIPHER_SUITE_GCMP_256 &&
			    !FUNC10(mvm)) {
				key->hw_key_idx = STA_KEY_IDX_INVALID;
				break;
			}

			if (!mvmvif->ap_ibss_active) {
				for (i = 0;
				     i < FUNC0(mvmvif->ap_early_keys);
				     i++) {
					if (!mvmvif->ap_early_keys[i]) {
						mvmvif->ap_early_keys[i] = key;
						break;
					}
				}

				if (i >= FUNC0(mvmvif->ap_early_keys))
					ret = -ENOSPC;

				break;
			}
		}

		/* During FW restart, in order to restore the state as it was,
		 * don't try to reprogram keys we previously failed for.
		 */
		if (FUNC23(IWL_MVM_STATUS_IN_HW_RESTART, &mvm->status) &&
		    key->hw_key_idx == STA_KEY_IDX_INVALID) {
			FUNC1(mvm,
					   "skip invalid idx key programming during restart\n");
			ret = 0;
			break;
		}

		if (!FUNC23(IWL_MVM_STATUS_IN_HW_RESTART, &mvm->status) &&
		    sta && FUNC9(mvm) &&
		    key->flags & IEEE80211_KEY_FLAG_PAIRWISE &&
		    (key->cipher == WLAN_CIPHER_SUITE_CCMP ||
		     key->cipher == WLAN_CIPHER_SUITE_GCMP ||
		     key->cipher == WLAN_CIPHER_SUITE_GCMP_256)) {
			struct ieee80211_key_seq seq;
			int tid, q;

			mvmsta = FUNC13(sta);
			FUNC5(FUNC19(mvmsta->ptk_pn[keyidx]));
			ptk_pn = FUNC16(FUNC22(ptk_pn, q,
						     mvm->trans->num_rx_queues),
					 GFP_KERNEL);
			if (!ptk_pn) {
				ret = -ENOMEM;
				break;
			}

			for (tid = 0; tid < IWL_MAX_TID_COUNT; tid++) {
				FUNC7(key, tid, &seq);
				for (q = 0; q < mvm->trans->num_rx_queues; q++)
					FUNC18(ptk_pn->q[q].pn[tid],
					       seq.ccmp.pn,
					       IEEE80211_CCMP_PN_LEN);
			}

			FUNC20(mvmsta->ptk_pn[keyidx], ptk_pn);
		}

		/* in HW restart reuse the index, otherwise request a new one */
		if (FUNC23(IWL_MVM_STATUS_IN_HW_RESTART, &mvm->status))
			key_offset = key->hw_key_idx;
		else
			key_offset = STA_KEY_IDX_INVALID;

		FUNC1(mvm, "set hwcrypto key\n");
		ret = FUNC12(mvm, vif, sta, key, key_offset);
		if (ret) {
			FUNC3(mvm, "set key failed\n");
			key->hw_key_idx = STA_KEY_IDX_INVALID;
			/*
			 * can't add key for RX, but we don't need it
			 * in the device for TX so still return 0,
			 * unless we have new TX API where we cannot
			 * put key material into the TX_CMD
			 */
			if (FUNC10(mvm))
				ret = -EOPNOTSUPP;
			else
				ret = 0;
		}

		break;
	case DISABLE_KEY:
		ret = -ENOENT;
		for (i = 0; i < FUNC0(mvmvif->ap_early_keys); i++) {
			if (mvmvif->ap_early_keys[i] == key) {
				mvmvif->ap_early_keys[i] = NULL;
				ret = 0;
			}
		}

		/* found in pending list - don't do anything else */
		if (ret == 0)
			break;

		if (key->hw_key_idx == STA_KEY_IDX_INVALID) {
			ret = 0;
			break;
		}

		if (sta && FUNC9(mvm) &&
		    key->flags & IEEE80211_KEY_FLAG_PAIRWISE &&
		    (key->cipher == WLAN_CIPHER_SUITE_CCMP ||
		     key->cipher == WLAN_CIPHER_SUITE_GCMP ||
		     key->cipher == WLAN_CIPHER_SUITE_GCMP_256)) {
			mvmsta = FUNC13(sta);
			ptk_pn = FUNC21(
						mvmsta->ptk_pn[keyidx],
						FUNC17(&mvm->mutex));
			FUNC4(mvmsta->ptk_pn[keyidx], NULL);
			if (ptk_pn)
				FUNC15(ptk_pn, rcu_head);
		}

		FUNC1(mvm, "disable hwcrypto key\n");
		ret = FUNC11(mvm, vif, sta, key);
		break;
	default:
		ret = -EINVAL;
	}

	return ret;
}