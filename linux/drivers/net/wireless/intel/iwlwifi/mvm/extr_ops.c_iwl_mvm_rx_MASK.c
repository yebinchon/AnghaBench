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
typedef  int /*<<< orphan*/  u16 ;
struct napi_struct {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  cmd; int /*<<< orphan*/  group_id; } ;
struct iwl_rx_packet {TYPE_1__ hdr; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_op_mode {int dummy; } ;
struct iwl_mvm {int dummy; } ;

/* Variables and functions */
 struct iwl_mvm* FUNC0 (struct iwl_op_mode*) ; 
 int /*<<< orphan*/  LEGACY_GROUP ; 
 int /*<<< orphan*/  REPLY_RX_MPDU_CMD ; 
 int /*<<< orphan*/  REPLY_RX_PHY_CMD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,struct iwl_rx_cmd_buffer*,struct iwl_rx_packet*) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_mvm*,struct napi_struct*,struct iwl_rx_cmd_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_mvm*,struct iwl_rx_cmd_buffer*) ; 
 scalar_t__ FUNC5 (int) ; 
 struct iwl_rx_packet* FUNC6 (struct iwl_rx_cmd_buffer*) ; 

__attribute__((used)) static void FUNC7(struct iwl_op_mode *op_mode,
		       struct napi_struct *napi,
		       struct iwl_rx_cmd_buffer *rxb)
{
	struct iwl_rx_packet *pkt = FUNC6(rxb);
	struct iwl_mvm *mvm = FUNC0(op_mode);
	u16 cmd = FUNC1(pkt->hdr.group_id, pkt->hdr.cmd);

	if (FUNC5(cmd == FUNC1(LEGACY_GROUP, REPLY_RX_MPDU_CMD)))
		FUNC3(mvm, napi, rxb);
	else if (cmd == FUNC1(LEGACY_GROUP, REPLY_RX_PHY_CMD))
		FUNC4(mvm, rxb);
	else
		FUNC2(mvm, rxb, pkt);
}