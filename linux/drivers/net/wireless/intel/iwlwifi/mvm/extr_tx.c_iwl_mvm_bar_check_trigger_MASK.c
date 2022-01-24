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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct iwl_mvm {int /*<<< orphan*/  fwrt; } ;
struct iwl_fw_dbg_trigger_tlv {scalar_t__ data; } ;
struct iwl_fw_dbg_trigger_ba {int /*<<< orphan*/  tx_bar; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FW_DBG_TRIGGER_BA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct iwl_fw_dbg_trigger_tlv*,char*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct iwl_fw_dbg_trigger_tlv* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct iwl_mvm *mvm, const u8 *addr,
			  u16 tid, u16 ssn)
{
	struct iwl_fw_dbg_trigger_tlv *trig;
	struct iwl_fw_dbg_trigger_ba *ba_trig;

	trig = FUNC2(&mvm->fwrt, NULL, FW_DBG_TRIGGER_BA);
	if (!trig)
		return;

	ba_trig = (void *)trig->data;

	if (!(FUNC3(ba_trig->tx_bar) & FUNC0(tid)))
		return;

	FUNC1(&mvm->fwrt, trig,
				"BAR sent to %pM, tid %d, ssn %d",
				addr, tid, ssn);
}