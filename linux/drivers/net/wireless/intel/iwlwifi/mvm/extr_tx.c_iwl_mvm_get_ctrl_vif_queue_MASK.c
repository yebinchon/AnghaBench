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
struct iwl_mvm_vif {int cab_queue; } ;
struct iwl_mvm {int probe_queue; int p2p_dev_queue; } ;
struct TYPE_3__ {TYPE_2__* vif; } ;
struct ieee80211_tx_info {TYPE_1__ control; } ;
struct ieee80211_hdr {int /*<<< orphan*/  addr1; int /*<<< orphan*/  frame_control; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_4__ {int type; } ;

/* Variables and functions */
#define  NL80211_IFTYPE_ADHOC 130 
#define  NL80211_IFTYPE_AP 129 
#define  NL80211_IFTYPE_P2P_DEVICE 128 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct iwl_mvm_vif* FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct iwl_mvm *mvm,
				      struct ieee80211_tx_info *info,
				      struct ieee80211_hdr *hdr)
{
	struct iwl_mvm_vif *mvmvif =
		FUNC9(info->control.vif);
	__le16 fc = hdr->frame_control;

	switch (info->control.vif->type) {
	case NL80211_IFTYPE_AP:
	case NL80211_IFTYPE_ADHOC:
		/*
		 * Non-bufferable frames use the broadcast station, thus they
		 * use the probe queue.
		 * Also take care of the case where we send a deauth to a
		 * station that we don't have, or similarly an association
		 * response (with non-success status) for a station we can't
		 * accept.
		 * Also, disassociate frames might happen, particular with
		 * reason 7 ("Class 3 frame received from nonassociated STA").
		 */
		if (FUNC6(fc) &&
		    (!FUNC3(fc) ||
		     FUNC4(fc) || FUNC5(fc)))
			return mvm->probe_queue;

		if (!FUNC2(fc) && !FUNC7(fc) &&
		    FUNC8(hdr->addr1))
			return mvmvif->cab_queue;

		FUNC0(info->control.vif->type != NL80211_IFTYPE_ADHOC,
			  "fc=0x%02x", FUNC10(fc));
		return mvm->probe_queue;
	case NL80211_IFTYPE_P2P_DEVICE:
		if (FUNC6(fc))
			return mvm->p2p_dev_queue;

		FUNC1(1);
		return mvm->p2p_dev_queue;
	default:
		FUNC0(1, "Not a ctrl vif, no available queue\n");
		return -1;
	}
}