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
struct iwl_mvm {int /*<<< orphan*/ * fw_id_to_mac_id; int /*<<< orphan*/  phy_db; int /*<<< orphan*/  trans; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*,int) ; 
 int /*<<< orphan*/  IWL_UCODE_WOWLAN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_mvm*) ; 
 int FUNC5 (struct iwl_mvm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct iwl_mvm*) ; 
 int FUNC7 (struct iwl_mvm*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct iwl_mvm*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

int FUNC12(struct iwl_mvm *mvm)
{
	int ret, i;

	FUNC11(&mvm->mutex);

	ret = FUNC10(mvm->trans);
	if (ret)
		return ret;

	ret = FUNC5(mvm, IWL_UCODE_WOWLAN);
	if (ret) {
		FUNC1(mvm, "Failed to start WoWLAN firmware: %d\n", ret);
		goto error;
	}

	ret = FUNC9(mvm, FUNC4(mvm));
	if (ret)
		goto error;

	/* Send phy db control command and then phy db calibration*/
	ret = FUNC8(mvm->phy_db);
	if (ret)
		goto error;

	ret = FUNC7(mvm);
	if (ret)
		goto error;

	/* init the fw <-> mac80211 STA mapping */
	for (i = 0; i < FUNC0(mvm->fw_id_to_mac_id); i++)
		FUNC2(mvm->fw_id_to_mac_id[i], NULL);

	/* Add auxiliary station for scanning */
	ret = FUNC3(mvm);
	if (ret)
		goto error;

	return 0;
 error:
	FUNC6(mvm);
	return ret;
}