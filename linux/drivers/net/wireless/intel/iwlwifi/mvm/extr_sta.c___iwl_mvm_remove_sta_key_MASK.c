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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct iwl_mvm_add_sta_key_cmd_v1 {int dummy; } ;
struct TYPE_4__ {scalar_t__ sta_id; int /*<<< orphan*/  key_offset; int /*<<< orphan*/  key_flags; } ;
struct iwl_mvm_add_sta_key_cmd {TYPE_2__ common; } ;
struct iwl_mvm {TYPE_1__* fw; } ;
struct ieee80211_key_conf {int keyidx; int /*<<< orphan*/  hw_key_idx; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_3__ {int /*<<< orphan*/  ucode_capa; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADD_STA_KEY ; 
#define  ADD_STA_SUCCESS 128 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*) ; 
 scalar_t__ IWL_MVM_INVALID_STA ; 
 int /*<<< orphan*/  IWL_UCODE_TLV_API_TKIP_MIC_KEYS ; 
 int STA_KEY_FLG_KEYID_MSK ; 
 int STA_KEY_FLG_KEYID_POS ; 
 int STA_KEY_FLG_NO_ENC ; 
 int STA_KEY_FLG_WEP_KEY_MAP ; 
 int STA_KEY_MULTICAST ; 
 int STA_KEY_NOT_VALID ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct iwl_mvm*,int /*<<< orphan*/ ,int,struct iwl_mvm_add_sta_key_cmd*,int*) ; 

__attribute__((used)) static int FUNC5(struct iwl_mvm *mvm, u8 sta_id,
				    struct ieee80211_key_conf *keyconf,
				    bool mcast)
{
	union {
		struct iwl_mvm_add_sta_key_cmd_v1 cmd_v1;
		struct iwl_mvm_add_sta_key_cmd cmd;
	} u = {};
	bool new_api = FUNC3(&mvm->fw->ucode_capa,
				  IWL_UCODE_TLV_API_TKIP_MIC_KEYS);
	__le16 key_flags;
	int ret, size;
	u32 status;

	/* This is a valid situation for GTK removal */
	if (sta_id == IWL_MVM_INVALID_STA)
		return 0;

	key_flags = FUNC2((keyconf->keyidx << STA_KEY_FLG_KEYID_POS) &
				 STA_KEY_FLG_KEYID_MSK);
	key_flags |= FUNC2(STA_KEY_FLG_NO_ENC | STA_KEY_FLG_WEP_KEY_MAP);
	key_flags |= FUNC2(STA_KEY_NOT_VALID);

	if (mcast)
		key_flags |= FUNC2(STA_KEY_MULTICAST);

	/*
	 * The fields assigned here are in the same location at the start
	 * of the command, so we can do this union trick.
	 */
	u.cmd.common.key_flags = key_flags;
	u.cmd.common.key_offset = keyconf->hw_key_idx;
	u.cmd.common.sta_id = sta_id;

	size = new_api ? sizeof(u.cmd) : sizeof(u.cmd_v1);

	status = ADD_STA_SUCCESS;
	ret = FUNC4(mvm, ADD_STA_KEY, size, &u.cmd,
					  &status);

	switch (status) {
	case ADD_STA_SUCCESS:
		FUNC0(mvm, "MODIFY_STA: remove sta key passed\n");
		break;
	default:
		ret = -EIO;
		FUNC1(mvm, "MODIFY_STA: remove sta key failed\n");
		break;
	}

	return ret;
}