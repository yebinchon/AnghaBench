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
typedef  scalar_t__ u32 ;
struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_mvm {int /*<<< orphan*/  fwrt; } ;
struct iwl_fw_dbg_trigger_tlv {scalar_t__ data; } ;
struct iwl_fw_dbg_trigger_stats {int /*<<< orphan*/  stop_threshold; int /*<<< orphan*/  stop_offset; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FW_DBG_TRIGGER_STATS ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct iwl_fw_dbg_trigger_tlv*,int /*<<< orphan*/ *) ; 
 struct iwl_fw_dbg_trigger_tlv* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct iwl_rx_packet*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC6(struct iwl_mvm *mvm, struct iwl_rx_packet *pkt)
{
	struct iwl_fw_dbg_trigger_tlv *trig;
	struct iwl_fw_dbg_trigger_stats *trig_stats;
	u32 trig_offset, trig_thold;

	trig = FUNC2(&mvm->fwrt, NULL, FW_DBG_TRIGGER_STATS);
	if (!trig)
		return;

	trig_stats = (void *)trig->data;

	trig_offset = FUNC4(trig_stats->stop_offset);
	trig_thold = FUNC4(trig_stats->stop_threshold);

	if (FUNC0(trig_offset >= FUNC3(pkt)))
		return;

	if (FUNC5((__le32 *) (pkt->data + trig_offset)) < trig_thold)
		return;

	FUNC1(&mvm->fwrt, trig, NULL);
}