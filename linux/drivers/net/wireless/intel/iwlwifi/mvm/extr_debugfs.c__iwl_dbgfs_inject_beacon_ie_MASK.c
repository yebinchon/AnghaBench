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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct iwl_mvm_vif {scalar_t__ id; } ;
struct iwl_mvm {int beacon_inject_active; int /*<<< orphan*/  mutex; TYPE_2__* hw; TYPE_1__* fw; } ;
struct iwl_mac_beacon_cmd {int /*<<< orphan*/  tim_size; int /*<<< orphan*/  tim_idx; int /*<<< orphan*/  template_id; void* byte_cnt; void* flags; } ;
struct ieee80211_vif {scalar_t__ type; } ;
struct ieee80211_tx_info {int dummy; } ;
typedef  int /*<<< orphan*/  beacon_cmd ;
struct TYPE_4__ {int extra_beacon_tailroom; } ;
struct TYPE_3__ {int /*<<< orphan*/  ucode_capa; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 struct ieee80211_tx_info* FUNC0 (struct sk_buff*) ; 
 scalar_t__ IWL_FIRST_CCK_RATE ; 
 int /*<<< orphan*/  IWL_MAC_BEACON_CCK ; 
 int /*<<< orphan*/  IWL_UCODE_TLV_API_NEW_BEACON_TEMPLATE ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 int NUM_MAC_INDEX_DRIVER ; 
 int U8_MAX ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 struct sk_buff* FUNC6 (TYPE_2__*,struct ieee80211_vif*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC8 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (struct ieee80211_tx_info*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC11 (struct iwl_mvm*,struct sk_buff*,struct iwl_mac_beacon_cmd*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct iwl_mvm*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 struct ieee80211_vif* FUNC13 (struct iwl_mvm*,int,int) ; 
 struct iwl_mvm_vif* FUNC14 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC20(struct iwl_mvm *mvm, char *bin, int len)
{
	struct ieee80211_vif *vif;
	struct iwl_mvm_vif *mvmvif;
	struct sk_buff *beacon;
	struct ieee80211_tx_info *info;
	struct iwl_mac_beacon_cmd beacon_cmd = {};
	u8 rate;
	u16 flags;
	int i;

	len /= 2;

	/* Element len should be represented by u8 */
	if (len >= U8_MAX)
		return -EINVAL;

	if (!FUNC7(mvm))
		return -EIO;

	if (!FUNC8(mvm) &&
	    !FUNC4(&mvm->fw->ucode_capa,
			IWL_UCODE_TLV_API_NEW_BEACON_TEMPLATE))
		return -EINVAL;

	FUNC17();

	for (i = 0; i < NUM_MAC_INDEX_DRIVER; i++) {
		vif = FUNC13(mvm, i, true);
		if (!vif)
			continue;

		if (vif->type == NL80211_IFTYPE_AP)
			break;
	}

	if (i == NUM_MAC_INDEX_DRIVER || !vif)
		goto out_err;

	mvm->hw->extra_beacon_tailroom = len;

	beacon = FUNC6(mvm->hw, vif, NULL);
	if (!beacon)
		goto out_err;

	if (len && FUNC5(FUNC19(beacon, len), bin, len)) {
		FUNC3(beacon);
		goto out_err;
	}

	mvm->beacon_inject_active = true;

	mvmvif = FUNC14(vif);
	info = FUNC0(beacon);
	rate = FUNC10(info, vif);
	flags = FUNC9(rate);

	if (rate == IWL_FIRST_CCK_RATE)
		flags |= IWL_MAC_BEACON_CCK;

	beacon_cmd.flags = FUNC1(flags);
	beacon_cmd.byte_cnt = FUNC1((u16)beacon->len);
	beacon_cmd.template_id = FUNC2((u32)mvmvif->id);

	FUNC12(mvm, &beacon_cmd.tim_idx,
				 &beacon_cmd.tim_size,
				 beacon->data, beacon->len);

	FUNC15(&mvm->mutex);
	FUNC11(mvm, beacon, &beacon_cmd,
					 sizeof(beacon_cmd));
	FUNC16(&mvm->mutex);

	FUNC3(beacon);

	FUNC18();
	return 0;

out_err:
	FUNC18();
	return -EINVAL;
}