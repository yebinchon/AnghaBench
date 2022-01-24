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
struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_mvm {TYPE_1__* hw; int /*<<< orphan*/  mutex; } ;
struct iwl_mcc_chub_notif {scalar_t__ source_id; int /*<<< orphan*/  mcc; } ;
struct ieee80211_regdomain {int dummy; } ;
typedef  enum iwl_mcc_source { ____Placeholder_iwl_mcc_source } iwl_mcc_source ;
struct TYPE_2__ {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ieee80211_regdomain*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,char*,...) ; 
 scalar_t__ MCC_SOURCE_WIFI ; 
 scalar_t__ FUNC3 (int) ; 
 struct ieee80211_regdomain* FUNC4 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_mvm*) ; 
 scalar_t__ FUNC7 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_regdomain*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct ieee80211_regdomain*) ; 
 struct iwl_rx_packet* FUNC12 (struct iwl_rx_cmd_buffer*) ; 

void FUNC13(struct iwl_mvm *mvm,
				struct iwl_rx_cmd_buffer *rxb)
{
	struct iwl_rx_packet *pkt = FUNC12(rxb);
	struct iwl_mcc_chub_notif *notif = (void *)pkt->data;
	enum iwl_mcc_source src;
	char mcc[3];
	struct ieee80211_regdomain *regd;
	int wgds_tbl_idx;

	FUNC10(&mvm->mutex);

	if (FUNC7(mvm) && notif->source_id == MCC_SOURCE_WIFI) {
		FUNC2(mvm, "Ignore mcc update while associated\n");
		return;
	}

	if (FUNC3(!FUNC6(mvm)))
		return;

	mcc[0] = FUNC9(notif->mcc) >> 8;
	mcc[1] = FUNC9(notif->mcc) & 0xff;
	mcc[2] = '\0';
	src = notif->source_id;

	FUNC2(mvm,
		      "RX: received chub update mcc cmd (mcc '%s' src %d)\n",
		      mcc, src);
	regd = FUNC4(mvm->hw->wiphy, mcc, src, NULL);
	if (FUNC0(regd))
		return;

	wgds_tbl_idx = FUNC5(mvm);
	if (wgds_tbl_idx < 0)
		FUNC1(mvm, "SAR WGDS is disabled (%d)\n",
			       wgds_tbl_idx);
	else
		FUNC1(mvm, "SAR WGDS: geo profile %d is configured\n",
			       wgds_tbl_idx);

	FUNC11(mvm->hw->wiphy, regd);
	FUNC8(regd);
}