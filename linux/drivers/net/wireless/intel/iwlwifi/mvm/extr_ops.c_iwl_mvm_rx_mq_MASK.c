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
 int /*<<< orphan*/  BAR_FRAME_RELEASE ; 
 int /*<<< orphan*/  DATA_PATH_GROUP ; 
 int /*<<< orphan*/  FRAME_RELEASE ; 
 struct iwl_mvm* FUNC0 (struct iwl_op_mode*) ; 
 int /*<<< orphan*/  LEGACY_GROUP ; 
 int /*<<< orphan*/  REPLY_RX_MPDU_CMD ; 
 int /*<<< orphan*/  RX_NO_DATA_NOTIF ; 
 int /*<<< orphan*/  RX_QUEUES_NOTIFICATION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,struct napi_struct*,struct iwl_rx_cmd_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_mvm*,struct iwl_rx_cmd_buffer*,struct iwl_rx_packet*) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_mvm*,struct napi_struct*,struct iwl_rx_cmd_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_mvm*,struct napi_struct*,struct iwl_rx_cmd_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_mvm*,struct napi_struct*,struct iwl_rx_cmd_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_mvm*,struct napi_struct*,struct iwl_rx_cmd_buffer*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 
 struct iwl_rx_packet* FUNC9 (struct iwl_rx_cmd_buffer*) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(struct iwl_op_mode *op_mode,
			  struct napi_struct *napi,
			  struct iwl_rx_cmd_buffer *rxb)
{
	struct iwl_rx_packet *pkt = FUNC9(rxb);
	struct iwl_mvm *mvm = FUNC0(op_mode);
	u16 cmd = FUNC1(pkt->hdr.group_id, pkt->hdr.cmd);

	if (FUNC8(cmd == FUNC1(LEGACY_GROUP, REPLY_RX_MPDU_CMD)))
		FUNC6(mvm, napi, rxb, 0);
	else if (FUNC10(cmd == FUNC1(DATA_PATH_GROUP,
					 RX_QUEUES_NOTIFICATION)))
		FUNC7(mvm, napi, rxb, 0);
	else if (cmd == FUNC1(LEGACY_GROUP, FRAME_RELEASE))
		FUNC4(mvm, napi, rxb, 0);
	else if (cmd == FUNC1(LEGACY_GROUP, BAR_FRAME_RELEASE))
		FUNC2(mvm, napi, rxb, 0);
	else if (cmd == FUNC1(DATA_PATH_GROUP, RX_NO_DATA_NOTIF))
		FUNC5(mvm, napi, rxb, 0);
	else
		FUNC3(mvm, rxb, pkt);
}