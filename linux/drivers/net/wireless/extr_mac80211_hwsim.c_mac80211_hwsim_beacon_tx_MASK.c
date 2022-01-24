#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {scalar_t__ data; } ;
struct mac80211_hwsim_data {scalar_t__ tsf_offset; scalar_t__ abs_bcn_ts; struct ieee80211_hw* hw; } ;
struct ieee80211_vif {scalar_t__ type; scalar_t__ csa_active; int /*<<< orphan*/  chanctx_conf; } ;
struct TYPE_6__ {int /*<<< orphan*/  rates; } ;
struct ieee80211_tx_info {TYPE_1__ control; } ;
struct ieee80211_rate {int bitrate; } ;
struct TYPE_7__ {int /*<<< orphan*/  timestamp; } ;
struct TYPE_8__ {TYPE_2__ beacon; } ;
struct ieee80211_mgmt {TYPE_3__ u; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  chan; } ;
struct TYPE_10__ {TYPE_4__ def; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct ieee80211_tx_info* FUNC1 (struct sk_buff*) ; 
 scalar_t__ NL80211_IFTYPE_ADHOC ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 scalar_t__ NL80211_IFTYPE_MESH_POINT ; 
 int /*<<< orphan*/  SUPPORTS_RC_TABLE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_vif*) ; 
 struct sk_buff* FUNC4 (struct ieee80211_hw*,struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211_vif*) ; 
 scalar_t__ FUNC6 (struct ieee80211_vif*) ; 
 struct ieee80211_rate* FUNC7 (struct ieee80211_hw*,struct ieee80211_tx_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_vif*,int /*<<< orphan*/ *,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct ieee80211_hw*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(void *arg, u8 *mac,
				     struct ieee80211_vif *vif)
{
	struct mac80211_hwsim_data *data = arg;
	struct ieee80211_hw *hw = data->hw;
	struct ieee80211_tx_info *info;
	struct ieee80211_rate *txrate;
	struct ieee80211_mgmt *mgmt;
	struct sk_buff *skb;

	FUNC3(vif);

	if (vif->type != NL80211_IFTYPE_AP &&
	    vif->type != NL80211_IFTYPE_MESH_POINT &&
	    vif->type != NL80211_IFTYPE_ADHOC)
		return;

	skb = FUNC4(hw, vif);
	if (skb == NULL)
		return;
	info = FUNC1(skb);
	if (FUNC9(hw, SUPPORTS_RC_TABLE))
		FUNC8(vif, NULL, skb,
				       info->control.rates,
				       FUNC0(info->control.rates));

	txrate = FUNC7(hw, info);

	mgmt = (struct ieee80211_mgmt *) skb->data;
	/* fake header transmission time */
	data->abs_bcn_ts = FUNC10();
	mgmt->u.beacon.timestamp = FUNC2(data->abs_bcn_ts +
					       data->tsf_offset +
					       24 * 8 * 10 / txrate->bitrate);

	FUNC11(hw, skb,
				FUNC12(vif->chanctx_conf)->def.chan);

	if (vif->csa_active && FUNC6(vif))
		FUNC5(vif);
}