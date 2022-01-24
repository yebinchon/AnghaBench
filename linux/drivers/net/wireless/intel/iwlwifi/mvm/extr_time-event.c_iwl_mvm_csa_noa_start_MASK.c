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
struct iwl_mvm {int /*<<< orphan*/  csa_vif; } ;
struct ieee80211_vif {int /*<<< orphan*/  csa_active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_vif*) ; 
 struct ieee80211_vif* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void FUNC8(struct iwl_mvm *mvm)
{
	struct ieee80211_vif *csa_vif;

	FUNC6();

	csa_vif = FUNC5(mvm->csa_vif);
	if (!csa_vif || !csa_vif->csa_active)
		goto out_unlock;

	FUNC0(mvm, "CSA NOA started\n");

	/*
	 * CSA NoA is started but we still have beacons to
	 * transmit on the current channel.
	 * So we just do nothing here and the switch
	 * will be performed on the last TBTT.
	 */
	if (!FUNC4(csa_vif)) {
		FUNC1(mvm, "CSA NOA started too early\n");
		goto out_unlock;
	}

	FUNC3(csa_vif);

	FUNC7();

	FUNC2(mvm->csa_vif, NULL);

	return;

out_unlock:
	FUNC7();
}