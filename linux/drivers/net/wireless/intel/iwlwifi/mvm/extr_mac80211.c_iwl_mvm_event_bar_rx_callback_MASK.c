#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct iwl_mvm {int /*<<< orphan*/  fwrt; } ;
struct iwl_fw_dbg_trigger_tlv {scalar_t__ data; } ;
struct iwl_fw_dbg_trigger_ba {int /*<<< orphan*/  rx_bar; } ;
struct ieee80211_vif {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  ssn; int /*<<< orphan*/  tid; TYPE_1__* sta; } ;
struct TYPE_6__ {TYPE_2__ ba; } ;
struct ieee80211_event {TYPE_3__ u; } ;
struct TYPE_4__ {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FW_DBG_TRIGGER_BA ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct iwl_fw_dbg_trigger_tlv*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct iwl_fw_dbg_trigger_tlv* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct iwl_mvm *mvm,
					  struct ieee80211_vif *vif,
					  const struct ieee80211_event *event)
{
	struct iwl_fw_dbg_trigger_tlv *trig;
	struct iwl_fw_dbg_trigger_ba *ba_trig;

	trig = FUNC3(&mvm->fwrt, FUNC1(vif),
				     FW_DBG_TRIGGER_BA);
	if (!trig)
		return;

	ba_trig = (void *)trig->data;

	if (!(FUNC4(ba_trig->rx_bar) & FUNC0(event->u.ba.tid)))
		return;

	FUNC2(&mvm->fwrt, trig,
				"BAR received from %pM, tid %d, ssn %d",
				event->u.ba.sta->addr, event->u.ba.tid,
				event->u.ba.ssn);
}