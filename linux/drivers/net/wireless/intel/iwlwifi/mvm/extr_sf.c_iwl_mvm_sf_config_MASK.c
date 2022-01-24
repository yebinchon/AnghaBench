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
typedef  size_t u8 ;
struct iwl_sf_cfg_cmd {int /*<<< orphan*/  state; } ;
struct iwl_mvm {int sf_state; int /*<<< orphan*/ * fw_id_to_mac_id; TYPE_1__* cfg; } ;
struct ieee80211_sta {int dummy; } ;
typedef  int /*<<< orphan*/  sf_cmd ;
typedef  enum iwl_sf_state { ____Placeholder_iwl_sf_state } iwl_sf_state ;
struct TYPE_2__ {scalar_t__ disable_dummy_notification; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_ASYNC ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_sta*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*) ; 
 size_t IWL_MVM_INVALID_STA ; 
 int /*<<< orphan*/  REPLY_SF_CFG_CMD ; 
 int SF_CFG_DUMMY_NOTIF_OFF ; 
#define  SF_FULL_ON 130 
#define  SF_INIT_OFF 129 
#define  SF_UNINIT 128 
 int /*<<< orphan*/  FUNC2 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_mvm*,struct iwl_sf_cfg_cmd*,struct ieee80211_sta*) ; 
 int FUNC5 (struct iwl_mvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct iwl_sf_cfg_cmd*) ; 
 struct ieee80211_sta* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static int FUNC9(struct iwl_mvm *mvm, u8 sta_id,
			     enum iwl_sf_state new_state)
{
	struct iwl_sf_cfg_cmd sf_cmd = {
		.state = FUNC3(new_state),
	};
	struct ieee80211_sta *sta;
	int ret = 0;

	if (mvm->cfg->disable_dummy_notification)
		sf_cmd.state |= FUNC3(SF_CFG_DUMMY_NOTIF_OFF);

	/*
	 * If an associated AP sta changed its antenna configuration, the state
	 * will remain FULL_ON but SF parameters need to be reconsidered.
	 */
	if (new_state != SF_FULL_ON && mvm->sf_state == new_state)
		return 0;

	switch (new_state) {
	case SF_UNINIT:
		FUNC4(mvm, &sf_cmd, NULL);
		break;
	case SF_FULL_ON:
		if (sta_id == IWL_MVM_INVALID_STA) {
			FUNC1(mvm,
				"No station: Cannot switch SF to FULL_ON\n");
			return -EINVAL;
		}
		FUNC7();
		sta = FUNC6(mvm->fw_id_to_mac_id[sta_id]);
		if (FUNC0(sta)) {
			FUNC1(mvm, "Invalid station id\n");
			FUNC8();
			return -EINVAL;
		}
		FUNC4(mvm, &sf_cmd, sta);
		FUNC8();
		break;
	case SF_INIT_OFF:
		FUNC4(mvm, &sf_cmd, NULL);
		break;
	default:
		FUNC2(1, "Invalid state: %d. not sending Smart Fifo cmd\n",
			  new_state);
		return -EINVAL;
	}

	ret = FUNC5(mvm, REPLY_SF_CFG_CMD, CMD_ASYNC,
				   sizeof(sf_cmd), &sf_cmd);
	if (!ret)
		mvm->sf_state = new_state;

	return ret;
}