#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct iwl_nvm_access_complete_cmd {int /*<<< orphan*/  init_flags; } ;
struct iwl_notification_wait {int dummy; } ;
struct iwl_mvm {int rfkill_safe_init_done; int /*<<< orphan*/  notif_wait; int /*<<< orphan*/ * nvm_data; int /*<<< orphan*/  fw; TYPE_2__* trans; int /*<<< orphan*/  nvm_sections; scalar_t__ nvm_file_name; int /*<<< orphan*/  fwrt; int /*<<< orphan*/  mutex; } ;
struct iwl_init_extended_cfg_cmd {int /*<<< orphan*/  init_flags; } ;
typedef  int /*<<< orphan*/  nvm_complete ;
typedef  int /*<<< orphan*/  init_cfg ;
struct TYPE_5__ {TYPE_1__* cfg; } ;
struct TYPE_4__ {scalar_t__ tx_with_siso_diversity; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CMD_SEND_IN_RFKILL ; 
#define  INIT_COMPLETE_NOTIF 128 
 int /*<<< orphan*/  INIT_EXTENDED_CFG_CMD ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_mvm*,char*,int) ; 
 int /*<<< orphan*/  IWL_FW_INI_TIME_POINT_AFTER_ALIVE ; 
 int /*<<< orphan*/  IWL_FW_INI_TIME_POINT_EARLY ; 
 int /*<<< orphan*/  IWL_INIT_NVM ; 
 int /*<<< orphan*/  IWL_INIT_PHY ; 
 scalar_t__ IWL_MVM_PARSE_NVM ; 
 int /*<<< orphan*/  IWL_UCODE_REGULAR ; 
 int /*<<< orphan*/  MVM_UCODE_ALIVE_TIMEOUT ; 
 int /*<<< orphan*/  NVM_ACCESS_COMPLETE ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  REGULATORY_AND_NVM_GROUP ; 
 int /*<<< orphan*/  SYSTEM_GROUP ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct iwl_notification_wait*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct iwl_mvm*) ; 
 int FUNC11 (struct iwl_mvm*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct iwl_mvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct iwl_nvm_access_complete_cmd*) ; 
 int FUNC13 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,struct iwl_notification_wait*) ; 
 int /*<<< orphan*/  iwl_wait_init_complete ; 
 int FUNC16 (int /*<<< orphan*/ *,struct iwl_notification_wait*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(struct iwl_mvm *mvm, bool read_nvm)
{
	struct iwl_notification_wait init_wait;
	struct iwl_nvm_access_complete_cmd nvm_complete = {};
	struct iwl_init_extended_cfg_cmd init_cfg = {
		.init_flags = FUNC6(FUNC1(IWL_INIT_NVM)),
	};
	static const u16 init_complete[] = {
		INIT_COMPLETE_NOTIF,
	};
	int ret;

	if (mvm->trans->cfg->tx_with_siso_diversity)
		init_cfg.init_flags |= FUNC6(FUNC1(IWL_INIT_PHY));

	FUNC17(&mvm->mutex);

	mvm->rfkill_safe_init_done = false;

	FUNC9(&mvm->notif_wait,
				   &init_wait,
				   init_complete,
				   FUNC0(init_complete),
				   iwl_wait_init_complete,
				   NULL);

	FUNC7(&mvm->fwrt, IWL_FW_INI_TIME_POINT_EARLY, NULL);

	/* Will also start the device */
	ret = FUNC11(mvm, IWL_UCODE_REGULAR);
	if (ret) {
		FUNC3(mvm, "Failed to start RT ucode: %d\n", ret);
		goto error;
	}
	FUNC7(&mvm->fwrt, IWL_FW_INI_TIME_POINT_AFTER_ALIVE,
			       NULL);

	/* Send init config command to mark that we are sending NVM access
	 * commands
	 */
	ret = FUNC12(mvm, FUNC5(SYSTEM_GROUP,
						INIT_EXTENDED_CFG_CMD),
				   CMD_SEND_IN_RFKILL,
				   sizeof(init_cfg), &init_cfg);
	if (ret) {
		FUNC3(mvm, "Failed to run init config command: %d\n",
			ret);
		goto error;
	}

	/* Load NVM to NIC if needed */
	if (mvm->nvm_file_name) {
		FUNC14(mvm->trans, mvm->nvm_file_name,
				      mvm->nvm_sections);
		FUNC10(mvm);
	}

	if (IWL_MVM_PARSE_NVM && read_nvm) {
		ret = FUNC13(mvm);
		if (ret) {
			FUNC3(mvm, "Failed to read NVM: %d\n", ret);
			goto error;
		}
	}

	ret = FUNC12(mvm, FUNC5(REGULATORY_AND_NVM_GROUP,
						NVM_ACCESS_COMPLETE),
				   CMD_SEND_IN_RFKILL,
				   sizeof(nvm_complete), &nvm_complete);
	if (ret) {
		FUNC3(mvm, "Failed to run complete NVM access: %d\n",
			ret);
		goto error;
	}

	/* We wait for the INIT complete notification */
	ret = FUNC16(&mvm->notif_wait, &init_wait,
				    MVM_UCODE_ALIVE_TIMEOUT);
	if (ret)
		return ret;

	/* Read the NVM only at driver load time, no need to do this twice */
	if (!IWL_MVM_PARSE_NVM && read_nvm) {
		mvm->nvm_data = FUNC8(mvm->trans, mvm->fw);
		if (FUNC2(mvm->nvm_data)) {
			ret = FUNC4(mvm->nvm_data);
			mvm->nvm_data = NULL;
			FUNC3(mvm, "Failed to read NVM: %d\n", ret);
			return ret;
		}
	}

	mvm->rfkill_safe_init_done = true;

	return 0;

error:
	FUNC15(&mvm->notif_wait, &init_wait);
	return ret;
}