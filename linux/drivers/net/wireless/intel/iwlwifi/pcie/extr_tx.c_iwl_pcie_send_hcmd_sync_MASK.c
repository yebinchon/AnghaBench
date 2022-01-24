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
struct iwl_txq {TYPE_2__* entries; int /*<<< orphan*/  write_ptr; int /*<<< orphan*/  read_ptr; } ;
struct iwl_trans_pcie {size_t cmd_queue; int /*<<< orphan*/  wait_command_queue; struct iwl_txq** txq; } ;
struct iwl_trans {int /*<<< orphan*/  status; } ;
struct iwl_host_cmd {int flags; int /*<<< orphan*/ * resp_pkt; int /*<<< orphan*/  id; } ;
struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ meta; } ;

/* Variables and functions */
 int CMD_SEND_IN_RFKILL ; 
 int CMD_WANT_SKB ; 
 int EIO ; 
 int ERFKILL ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  HOST_COMPLETE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_trans*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*,char*,int /*<<< orphan*/ ,...) ; 
 struct iwl_trans_pcie* FUNC3 (struct iwl_trans*) ; 
 int /*<<< orphan*/  STATUS_FW_ERROR ; 
 int /*<<< orphan*/  STATUS_RFKILL_OPMODE ; 
 int /*<<< orphan*/  STATUS_SYNC_HCMD_ACTIVE ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_host_cmd*) ; 
 int /*<<< orphan*/  FUNC8 (struct iwl_trans*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct iwl_trans*,struct iwl_host_cmd*) ; 
 int /*<<< orphan*/  FUNC10 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC11 (struct iwl_trans*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct iwl_trans *trans,
				   struct iwl_host_cmd *cmd)
{
	struct iwl_trans_pcie *trans_pcie = FUNC3(trans);
	struct iwl_txq *txq = trans_pcie->txq[trans_pcie->cmd_queue];
	int cmd_idx;
	int ret;

	FUNC0(trans, "Attempting to send sync command %s\n",
		       FUNC8(trans, cmd->id));

	if (FUNC4(FUNC13(STATUS_SYNC_HCMD_ACTIVE,
				  &trans->status),
		 "Command %s: a command is already active!\n",
		 FUNC8(trans, cmd->id)))
		return -EIO;

	FUNC0(trans, "Setting HCMD_ACTIVE for command %s\n",
		       FUNC8(trans, cmd->id));

	cmd_idx = FUNC9(trans, cmd);
	if (cmd_idx < 0) {
		ret = cmd_idx;
		FUNC5(STATUS_SYNC_HCMD_ACTIVE, &trans->status);
		FUNC2(trans,
			"Error sending %s: enqueue_hcmd failed: %d\n",
			FUNC8(trans, cmd->id), ret);
		return ret;
	}

	ret = FUNC15(trans_pcie->wait_command_queue,
				 !FUNC14(STATUS_SYNC_HCMD_ACTIVE,
					   &trans->status),
				 HOST_COMPLETE_TIMEOUT);
	if (!ret) {
		FUNC2(trans, "Error sending %s: time out after %dms.\n",
			FUNC8(trans, cmd->id),
			FUNC12(HOST_COMPLETE_TIMEOUT));

		FUNC2(trans, "Current CMD queue read_ptr %d write_ptr %d\n",
			txq->read_ptr, txq->write_ptr);

		FUNC5(STATUS_SYNC_HCMD_ACTIVE, &trans->status);
		FUNC0(trans, "Clearing HCMD_ACTIVE for command %s\n",
			       FUNC8(trans, cmd->id));
		ret = -ETIMEDOUT;

		FUNC11(trans);
		goto cancel;
	}

	if (FUNC14(STATUS_FW_ERROR, &trans->status)) {
		FUNC10(trans);
		FUNC2(trans, "FW error in SYNC CMD %s\n",
			FUNC8(trans, cmd->id));
		FUNC6();
		ret = -EIO;
		goto cancel;
	}

	if (!(cmd->flags & CMD_SEND_IN_RFKILL) &&
	    FUNC14(STATUS_RFKILL_OPMODE, &trans->status)) {
		FUNC1(trans, "RFKILL in SYNC CMD... no rsp\n");
		ret = -ERFKILL;
		goto cancel;
	}

	if ((cmd->flags & CMD_WANT_SKB) && !cmd->resp_pkt) {
		FUNC2(trans, "Error: Response NULL in '%s'\n",
			FUNC8(trans, cmd->id));
		ret = -EIO;
		goto cancel;
	}

	return 0;

cancel:
	if (cmd->flags & CMD_WANT_SKB) {
		/*
		 * Cancel the CMD_WANT_SKB flag for the cmd in the
		 * TX cmd queue. Otherwise in case the cmd comes
		 * in later, it will possibly set an invalid
		 * address (cmd->meta.source).
		 */
		txq->entries[cmd_idx].meta.flags &= ~CMD_WANT_SKB;
	}

	if (cmd->resp_pkt) {
		FUNC7(cmd);
		cmd->resp_pkt = NULL;
	}

	return ret;
}