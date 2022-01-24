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
typedef  int /*<<< orphan*/  u16 ;
struct iwl_mvm {int /*<<< orphan*/  fwrt; } ;
struct iwl_fw_dbg_trigger_tlv {scalar_t__ data; } ;
struct iwl_fw_dbg_trigger_ba {int /*<<< orphan*/  frame_timeout; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FW_DBG_TRIGGER_BA ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct iwl_fw_dbg_trigger_tlv*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct iwl_fw_dbg_trigger_tlv* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct iwl_mvm *mvm,
					  struct ieee80211_vif *vif,
					  const struct ieee80211_sta *sta,
					  u16 tid)
{
	struct iwl_fw_dbg_trigger_tlv *trig;
	struct iwl_fw_dbg_trigger_ba *ba_trig;

	trig = FUNC3(&mvm->fwrt, FUNC1(vif),
				     FW_DBG_TRIGGER_BA);
	if (!trig)
		return;

	ba_trig = (void *)trig->data;

	if (!(FUNC4(ba_trig->frame_timeout) & FUNC0(tid)))
		return;

	FUNC2(&mvm->fwrt, trig,
				"Frame from %pM timed out, tid %d",
				sta->addr, tid);
}