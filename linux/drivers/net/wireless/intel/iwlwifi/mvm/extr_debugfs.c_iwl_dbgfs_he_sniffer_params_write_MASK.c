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
typedef  int /*<<< orphan*/  u16 ;
struct iwl_notification_wait {int dummy; } ;
struct iwl_mvm_sniffer_apply {void* bssid; int /*<<< orphan*/  aid; struct iwl_mvm* mvm; } ;
struct iwl_mvm {int /*<<< orphan*/  mutex; int /*<<< orphan*/  notif_wait; } ;
struct iwl_he_monitor_cmd {int /*<<< orphan*/ * bssid; int /*<<< orphan*/  aid; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;
typedef  int /*<<< orphan*/  he_mon_cmd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DATA_PATH_GROUP ; 
 size_t EINVAL ; 
 size_t EIO ; 
 int /*<<< orphan*/  HE_AIR_SNIFFER_CONFIG_CMD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct iwl_notification_wait*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iwl_mvm_sniffer_apply*) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_mvm*) ; 
 int FUNC5 (struct iwl_mvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct iwl_he_monitor_cmd*) ; 
 int /*<<< orphan*/  iwl_mvm_sniffer_apply ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct iwl_notification_wait*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t
FUNC10(struct iwl_mvm *mvm, char *buf,
				  size_t count, loff_t *ppos)
{
	struct iwl_notification_wait wait;
	struct iwl_he_monitor_cmd he_mon_cmd = {};
	struct iwl_mvm_sniffer_apply apply = {
		.mvm = mvm,
	};
	u16 wait_cmds[] = {
		FUNC2(HE_AIR_SNIFFER_CONFIG_CMD, DATA_PATH_GROUP, 0),
	};
	u32 aid;
	int ret;

	if (!FUNC4(mvm))
		return -EIO;

	ret = FUNC9(buf, "%x %2hhx:%2hhx:%2hhx:%2hhx:%2hhx:%2hhx", &aid,
		     &he_mon_cmd.bssid[0], &he_mon_cmd.bssid[1],
		     &he_mon_cmd.bssid[2], &he_mon_cmd.bssid[3],
		     &he_mon_cmd.bssid[4], &he_mon_cmd.bssid[5]);
	if (ret != 7)
		return -EINVAL;

	he_mon_cmd.aid = FUNC1(aid);

	apply.aid = aid;
	apply.bssid = (void *)he_mon_cmd.bssid;

	FUNC7(&mvm->mutex);

	/*
	 * Use the notification waiter to get our function triggered
	 * in sequence with other RX. This ensures that frames we get
	 * on the RX queue _before_ the new configuration is applied
	 * still have mvm->cur_aid pointing to the old AID, and that
	 * frames on the RX queue _after_ the firmware processed the
	 * new configuration (and sent the response, synchronously)
	 * get mvm->cur_aid correctly set to the new AID.
	 */
	FUNC3(&mvm->notif_wait, &wait,
				   wait_cmds, FUNC0(wait_cmds),
				   iwl_mvm_sniffer_apply, &apply);

	ret = FUNC5(mvm, FUNC2(HE_AIR_SNIFFER_CONFIG_CMD,
						   DATA_PATH_GROUP, 0), 0,
				   sizeof(he_mon_cmd), &he_mon_cmd);

	/* no need to really wait, we already did anyway */
	FUNC6(&mvm->notif_wait, &wait);

	FUNC8(&mvm->mutex);

	return ret ?: count;
}