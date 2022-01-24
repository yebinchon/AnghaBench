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
typedef  int /*<<< orphan*/  u16 ;
struct iwl_mvm_phy_ctxt {int /*<<< orphan*/  id; } ;
struct iwl_mvm {int /*<<< orphan*/  mutex; } ;
struct cfg80211_chan_def {int dummy; } ;
struct ieee80211_chanctx_conf {int /*<<< orphan*/  rx_chains_dynamic; int /*<<< orphan*/  rx_chains_static; struct cfg80211_chan_def min_def; struct cfg80211_chan_def def; scalar_t__ drv_priv; } ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*) ; 
 struct iwl_mvm_phy_ctxt* FUNC2 (struct iwl_mvm*) ; 
 int FUNC3 (struct iwl_mvm*,struct ieee80211_chanctx_conf*) ; 
 int FUNC4 (struct iwl_mvm*,struct iwl_mvm_phy_ctxt*,struct cfg80211_chan_def*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_mvm*,struct iwl_mvm_phy_ctxt*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct iwl_mvm *mvm,
				 struct ieee80211_chanctx_conf *ctx)
{
	u16 *phy_ctxt_id = (u16 *)ctx->drv_priv;
	struct iwl_mvm_phy_ctxt *phy_ctxt;
	bool responder = FUNC3(mvm, ctx);
	struct cfg80211_chan_def *def = responder ? &ctx->def : &ctx->min_def;
	int ret;

	FUNC6(&mvm->mutex);

	FUNC0(mvm, "Add channel context\n");

	phy_ctxt = FUNC2(mvm);
	if (!phy_ctxt) {
		ret = -ENOSPC;
		goto out;
	}

	ret = FUNC4(mvm, phy_ctxt, def,
				       ctx->rx_chains_static,
				       ctx->rx_chains_dynamic);
	if (ret) {
		FUNC1(mvm, "Failed to add PHY context\n");
		goto out;
	}

	FUNC5(mvm, phy_ctxt);
	*phy_ctxt_id = phy_ctxt->id;
out:
	return ret;
}