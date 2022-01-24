#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  cb; scalar_t__ data; } ;
struct TYPE_9__ {int /*<<< orphan*/  sta_id; } ;
struct TYPE_8__ {int /*<<< orphan*/  sta_id; } ;
struct iwl_mvm_vif {TYPE_2__ mcast_sta; TYPE_1__ bcast_sta; } ;
struct TYPE_12__ {int /*<<< orphan*/  sta_id; } ;
struct TYPE_10__ {int /*<<< orphan*/  sta_id; } ;
struct iwl_mvm {int snif_queue; int aux_queue; int /*<<< orphan*/  trans; TYPE_5__ aux_sta; TYPE_3__ snif_sta; } ;
struct iwl_device_cmd {int dummy; } ;
struct TYPE_11__ {TYPE_6__* vif; } ;
struct ieee80211_tx_info {int flags; TYPE_4__ control; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
typedef  int /*<<< orphan*/  info ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_14__ {int flags; } ;
struct TYPE_13__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ IEEE80211_MAX_DATA_LEN ; 
 TYPE_7__* FUNC0 (struct sk_buff*) ; 
 int IEEE80211_TX_CTL_AMPDU ; 
 int IEEE80211_TX_CTL_TX_OFFCHAN ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,char*) ; 
 scalar_t__ IWL_MVM_NON_TRANSMITTING_AP ; 
 scalar_t__ NL80211_IFTYPE_ADHOC ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 scalar_t__ NL80211_IFTYPE_MONITOR ; 
 scalar_t__ NL80211_IFTYPE_P2P_DEVICE ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct iwl_mvm*,struct ieee80211_tx_info*,struct ieee80211_hdr*) ; 
 int /*<<< orphan*/  FUNC8 (struct iwl_mvm*,struct sk_buff*) ; 
 struct iwl_device_cmd* FUNC9 (struct iwl_mvm*,struct sk_buff*,struct ieee80211_tx_info*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,struct iwl_device_cmd*) ; 
 struct iwl_mvm_vif* FUNC11 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct iwl_device_cmd*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,struct sk_buff*,struct iwl_device_cmd*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct ieee80211_tx_info*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC15 (scalar_t__) ; 

int FUNC16(struct iwl_mvm *mvm, struct sk_buff *skb)
{
	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
	struct ieee80211_tx_info info;
	struct iwl_device_cmd *dev_cmd;
	u8 sta_id;
	int hdrlen = FUNC4(hdr->frame_control);
	__le16 fc = hdr->frame_control;
	bool offchannel = FUNC0(skb)->flags &
		IEEE80211_TX_CTL_TX_OFFCHAN;
	int queue = -1;

	if (IWL_MVM_NON_TRANSMITTING_AP && FUNC6(fc))
		return -1;

	FUNC14(&info, skb->cb, sizeof(info));

	if (FUNC3(skb->len > IEEE80211_MAX_DATA_LEN + hdrlen))
		return -1;

	if (FUNC3(info.flags & IEEE80211_TX_CTL_AMPDU))
		return -1;

	if (info.control.vif) {
		struct iwl_mvm_vif *mvmvif =
			FUNC11(info.control.vif);

		if (info.control.vif->type == NL80211_IFTYPE_P2P_DEVICE ||
		    info.control.vif->type == NL80211_IFTYPE_AP ||
		    info.control.vif->type == NL80211_IFTYPE_ADHOC) {
			if (!FUNC5(hdr->frame_control))
				sta_id = mvmvif->bcast_sta.sta_id;
			else
				sta_id = mvmvif->mcast_sta.sta_id;

			queue = FUNC7(mvm, &info, hdr);
		} else if (info.control.vif->type == NL80211_IFTYPE_MONITOR) {
			queue = mvm->snif_queue;
			sta_id = mvm->snif_sta.sta_id;
		} else if (info.control.vif->type == NL80211_IFTYPE_STATION &&
			   offchannel) {
			/*
			 * IWL_MVM_OFFCHANNEL_QUEUE is used for ROC packets
			 * that can be used in 2 different types of vifs, P2P &
			 * STATION.
			 * P2P uses the offchannel queue.
			 * STATION (HS2.0) uses the auxiliary context of the FW,
			 * and hence needs to be sent on the aux queue.
			 */
			sta_id = mvm->aux_sta.sta_id;
			queue = mvm->aux_queue;
		}
	}

	if (queue < 0) {
		FUNC2(mvm, "No queue was found. Dropping TX\n");
		return -1;
	}

	if (FUNC15(FUNC6(fc)))
		FUNC8(mvm, skb);

	FUNC1(mvm, "station Id %d, queue=%d\n", sta_id, queue);

	dev_cmd = FUNC9(mvm, skb, &info, hdrlen, NULL, sta_id);
	if (!dev_cmd)
		return -1;

	/* From now on, we cannot access info->control */
	FUNC10(skb, dev_cmd);

	if (FUNC13(mvm->trans, skb, dev_cmd, queue)) {
		FUNC12(mvm->trans, dev_cmd);
		return -1;
	}

	return 0;
}