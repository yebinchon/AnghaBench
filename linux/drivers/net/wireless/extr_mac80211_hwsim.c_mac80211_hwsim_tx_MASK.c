#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct mac80211_hwsim_data {int tx_bytes; int /*<<< orphan*/  tx_pkts; int /*<<< orphan*/  wmediumd; scalar_t__ tsf_offset; struct ieee80211_channel* tmp_chan; scalar_t__ idle; struct ieee80211_channel* channel; int /*<<< orphan*/  use_chanctx; } ;
struct TYPE_12__ {TYPE_6__* rates; TYPE_5__* vif; } ;
struct ieee80211_tx_info {int hw_queue; int flags; TYPE_4__ control; } ;
struct ieee80211_tx_control {int /*<<< orphan*/  sta; } ;
struct ieee80211_rate {int bitrate; } ;
struct TYPE_10__ {int /*<<< orphan*/  timestamp; } ;
struct TYPE_11__ {TYPE_2__ probe_resp; } ;
struct ieee80211_mgmt {TYPE_3__ u; } ;
struct ieee80211_hw {int /*<<< orphan*/  wiphy; struct mac80211_hwsim_data* priv; } ;
struct ieee80211_hdr {int /*<<< orphan*/  addr2; int /*<<< orphan*/  frame_control; } ;
struct ieee80211_channel {int dummy; } ;
struct TYPE_9__ {struct ieee80211_channel* chan; } ;
struct ieee80211_chanctx_conf {TYPE_1__ def; } ;
struct TYPE_14__ {int count; int idx; } ;
struct TYPE_13__ {int /*<<< orphan*/  chanctx_conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
 struct ieee80211_tx_info* FUNC1 (struct sk_buff*) ; 
 int IEEE80211_TX_CTL_NO_ACK ; 
 int IEEE80211_TX_STAT_ACK ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUPPORTS_RC_TABLE ; 
 scalar_t__ FUNC3 (int,char*,int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_hw*,struct sk_buff*) ; 
 struct ieee80211_rate* FUNC9 (struct ieee80211_hw*,struct ieee80211_tx_info*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,int /*<<< orphan*/ ,struct sk_buff*,TYPE_6__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct ieee80211_hw*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct ieee80211_tx_info*) ; 
 int /*<<< orphan*/  FUNC14 (struct ieee80211_hw*,struct sk_buff*) ; 
 scalar_t__ FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (struct ieee80211_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct ieee80211_hw*,struct sk_buff*,struct ieee80211_channel*) ; 
 void FUNC18 (struct ieee80211_hw*,struct sk_buff*,scalar_t__) ; 
 int FUNC19 (struct ieee80211_hw*,struct sk_buff*,struct ieee80211_channel*) ; 
 struct ieee80211_chanctx_conf* FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC22(struct ieee80211_hw *hw,
			      struct ieee80211_tx_control *control,
			      struct sk_buff *skb)
{
	struct mac80211_hwsim_data *data = hw->priv;
	struct ieee80211_tx_info *txi = FUNC1(skb);
	struct ieee80211_hdr *hdr = (void *)skb->data;
	struct ieee80211_chanctx_conf *chanctx_conf;
	struct ieee80211_channel *channel;
	bool ack;
	u32 _portid;

	if (FUNC4(skb->len < 10)) {
		/* Should not happen; just a sanity check for addr1 use */
		FUNC8(hw, skb);
		return;
	}

	if (!data->use_chanctx) {
		channel = data->channel;
	} else if (txi->hw_queue == 4) {
		channel = data->tmp_chan;
	} else {
		chanctx_conf = FUNC20(txi->control.vif->chanctx_conf);
		if (chanctx_conf)
			channel = chanctx_conf->def.chan;
		else
			channel = NULL;
	}

	if (FUNC3(!channel, "TX w/o channel - queue = %d\n", txi->hw_queue)) {
		FUNC8(hw, skb);
		return;
	}

	if (data->idle && !data->tmp_chan) {
		FUNC21(hw->wiphy, "Trying to TX when idle - reject\n");
		FUNC8(hw, skb);
		return;
	}

	if (txi->control.vif)
		FUNC6(txi->control.vif);
	if (control->sta)
		FUNC7(control->sta);

	if (FUNC11(hw, SUPPORTS_RC_TABLE))
		FUNC10(txi->control.vif, control->sta, skb,
				       txi->control.rates,
				       FUNC0(txi->control.rates));

	if (skb->len >= 24 + 8 &&
	    FUNC12(hdr->frame_control)) {
		/* fake header transmission time */
		struct ieee80211_mgmt *mgmt;
		struct ieee80211_rate *txrate;
		u64 ts;

		mgmt = (struct ieee80211_mgmt *)skb->data;
		txrate = FUNC9(hw, txi);
		ts = FUNC15();
		mgmt->u.probe_resp.timestamp =
			FUNC5(ts + data->tsf_offset +
				    24 * 8 * 10 / txrate->bitrate);
	}

	FUNC17(hw, skb, channel);

	/* wmediumd mode check */
	_portid = FUNC2(data->wmediumd);

	if (_portid)
		return FUNC18(hw, skb, _portid);

	/* NO wmediumd detected, perfect medium simulation */
	data->tx_pkts++;
	data->tx_bytes += skb->len;
	ack = FUNC19(hw, skb, channel);

	if (ack && skb->len >= 16)
		FUNC16(channel, hdr->addr2);

	FUNC13(txi);

	/* frame was transmitted at most favorable rate at first attempt */
	txi->control.rates[0].count = 1;
	txi->control.rates[1].idx = -1;

	if (!(txi->flags & IEEE80211_TX_CTL_NO_ACK) && ack)
		txi->flags |= IEEE80211_TX_STAT_ACK;
	FUNC14(hw, skb);
}