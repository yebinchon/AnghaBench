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
struct iwl_mvm {TYPE_1__* fw; } ;
struct ieee80211_vif {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ucode_capa; } ;

/* Variables and functions */
 int /*<<< orphan*/  IWL_UCODE_TLV_CAPA_TDLS_CHANNEL_SWITCH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,struct ieee80211_vif*) ; 
 int FUNC3 (struct iwl_mvm*,struct ieee80211_vif*) ; 

void FUNC4(struct iwl_mvm *mvm, struct ieee80211_vif *vif,
			       bool sta_added)
{
	int tdls_sta_cnt = FUNC3(mvm, vif);

	/* when the first peer joins, send a power update first */
	if (tdls_sta_cnt == 1 && sta_added)
		FUNC1(mvm);

	/* Configure the FW with TDLS peer info only if TDLS channel switch
	 * capability is set.
	 * TDLS config data is used currently only in TDLS channel switch code.
	 * Supposed to serve also TDLS buffer station which is not implemneted
	 * yet in FW*/
	if (FUNC0(&mvm->fw->ucode_capa,
			IWL_UCODE_TLV_CAPA_TDLS_CHANNEL_SWITCH))
		FUNC2(mvm, vif);

	/* when the last peer leaves, send a power update last */
	if (tdls_sta_cnt == 0 && !sta_added)
		FUNC1(mvm);
}