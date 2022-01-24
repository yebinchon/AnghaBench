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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  u8 ;
struct mwifiex_private {int dummy; } ;
struct host_cmd_ds_11n_delba {int /*<<< orphan*/  peer_mac_addr; int /*<<< orphan*/  del_ba_param_set; } ;
typedef  int /*<<< orphan*/  delba ;

/* Variables and functions */
 int DELBA_TID_POS ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  HostCmd_ACT_GEN_SET ; 
 int /*<<< orphan*/  HostCmd_CMD_11N_DELBA ; 
 int /*<<< orphan*/  IEEE80211_DELBA_PARAM_INITIATOR_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct host_cmd_ds_11n_delba*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct mwifiex_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct host_cmd_ds_11n_delba*,int) ; 

int FUNC5(struct mwifiex_private *priv, int tid, u8 *peer_mac,
		       int initiator)
{
	struct host_cmd_ds_11n_delba delba;
	int ret;
	uint16_t del_ba_param_set;

	FUNC3(&delba, 0, sizeof(delba));
	delba.del_ba_param_set = FUNC0(tid << DELBA_TID_POS);

	del_ba_param_set = FUNC1(delba.del_ba_param_set);
	if (initiator)
		del_ba_param_set |= IEEE80211_DELBA_PARAM_INITIATOR_MASK;
	else
		del_ba_param_set &= ~IEEE80211_DELBA_PARAM_INITIATOR_MASK;

	FUNC2(&delba.peer_mac_addr, peer_mac, ETH_ALEN);

	/* We don't wait for the response of this command */
	ret = FUNC4(priv, HostCmd_CMD_11N_DELBA,
			       HostCmd_ACT_GEN_SET, 0, &delba, false);

	return ret;
}