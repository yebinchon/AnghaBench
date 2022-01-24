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
typedef  int u32 ;
struct iwl_mvm {int /*<<< orphan*/  mutex; int /*<<< orphan*/ * fw_id_to_mac_id; int /*<<< orphan*/  trans; } ;
struct ieee80211_sta {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct ieee80211_sta*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_mvm*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_sta*) ; 
 int /*<<< orphan*/  FUNC7 (struct iwl_mvm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 struct ieee80211_sta* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(struct iwl_mvm *mvm, u32 queues, bool drop)
{
	int i;

	if (!FUNC5(mvm)) {
		if (drop) {
			FUNC10(&mvm->mutex);
			FUNC3(mvm,
				FUNC4(mvm) & queues, 0);
			FUNC11(&mvm->mutex);
		} else {
			FUNC8(mvm->trans, queues);
		}
		return;
	}

	FUNC10(&mvm->mutex);
	for (i = 0; i < FUNC0(mvm->fw_id_to_mac_id); i++) {
		struct ieee80211_sta *sta;

		sta = FUNC12(mvm->fw_id_to_mac_id[i],
						FUNC9(&mvm->mutex));
		if (FUNC1(sta))
			continue;

		if (drop)
			FUNC2(mvm, i, 0xFF, 0);
		else
			FUNC7(mvm,
					FUNC6(sta));
	}
	FUNC11(&mvm->mutex);
}