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
typedef  int /*<<< orphan*/  u32 ;
struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_mvm {int /*<<< orphan*/  trans; int /*<<< orphan*/  d3_test_active; int /*<<< orphan*/  mutex; } ;
struct iwl_host_cmd {int flags; struct iwl_rx_packet* resp_pkt; } ;
struct iwl_cmd_response {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int CMD_ASYNC ; 
 int CMD_WANT_SKB ; 
 int EINVAL ; 
 int EIO ; 
 int ERFKILL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,char*,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_host_cmd*) ; 
 int FUNC4 (struct iwl_rx_packet*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct iwl_host_cmd*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct iwl_mvm *mvm, struct iwl_host_cmd *cmd,
			    u32 *status)
{
	struct iwl_rx_packet *pkt;
	struct iwl_cmd_response *resp;
	int ret, resp_len;

	FUNC7(&mvm->mutex);

#if defined(CONFIG_IWLWIFI_DEBUGFS) && defined(CONFIG_PM_SLEEP)
	if (WARN_ON(mvm->d3_test_active))
		return -EIO;
#endif

	/*
	 * Only synchronous commands can wait for status,
	 * we use WANT_SKB so the caller can't.
	 */
	if (FUNC1(cmd->flags & (CMD_ASYNC | CMD_WANT_SKB),
		      "cmd flags %x", cmd->flags))
		return -EINVAL;

	cmd->flags |= CMD_WANT_SKB;

	ret = FUNC5(mvm->trans, cmd);
	if (ret == -ERFKILL) {
		/*
		 * The command failed because of RFKILL, don't update
		 * the status, leave it as success and return 0.
		 */
		return 0;
	} else if (ret) {
		return ret;
	}

	pkt = cmd->resp_pkt;

	resp_len = FUNC4(pkt);
	if (FUNC2(resp_len != sizeof(*resp))) {
		ret = -EIO;
		goto out_free_resp;
	}

	resp = (void *)pkt->data;
	*status = FUNC6(resp->status);
 out_free_resp:
	FUNC3(cmd);
	return ret;
}