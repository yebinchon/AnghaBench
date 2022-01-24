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
struct iwl_mvm {int /*<<< orphan*/  mutex; } ;
struct ieee80211_vif_chanctx_switch {int /*<<< orphan*/  old_ctx; int /*<<< orphan*/  vif; int /*<<< orphan*/  new_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*) ; 
 int FUNC1 (struct iwl_mvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_mvm*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct iwl_mvm *mvm,
				    struct ieee80211_vif_chanctx_switch *vifs)
{
	int ret;

	FUNC4(&mvm->mutex);
	FUNC2(mvm, vifs[0].vif, vifs[0].old_ctx, true);

	ret = FUNC1(mvm, vifs[0].vif, vifs[0].new_ctx,
					   true);
	if (ret) {
		FUNC0(mvm,
			"failed to assign new_ctx during channel switch\n");
		goto out_reassign;
	}

	goto out;

out_reassign:
	if (FUNC1(mvm, vifs[0].vif, vifs[0].old_ctx,
					 true)) {
		FUNC0(mvm, "failed to reassign old_ctx after failure.\n");
		goto out_restart;
	}

	goto out;

out_restart:
	/* things keep failing, better restart the hw */
	FUNC3(mvm, false);

out:
	FUNC5(&mvm->mutex);

	return ret;
}