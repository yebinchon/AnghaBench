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
typedef  size_t u16 ;
struct iwl_mvm_vif {int /*<<< orphan*/  ap_ibss_active; } ;
struct iwl_mvm_phy_ctxt {int dummy; } ;
struct iwl_mvm {struct iwl_mvm_phy_ctxt* phy_ctxts; int /*<<< orphan*/  mutex; } ;
struct TYPE_2__ {int /*<<< orphan*/  ftm_responder; struct ieee80211_ftm_responder_params* ftmr_params; } ;
struct ieee80211_vif {scalar_t__ type; int /*<<< orphan*/  chanctx_conf; scalar_t__ p2p; TYPE_1__ bss_conf; } ;
struct ieee80211_ftm_responder_params {int dummy; } ;
struct ieee80211_chanctx_conf {int /*<<< orphan*/  def; int /*<<< orphan*/  rx_chains_dynamic; int /*<<< orphan*/  rx_chains_static; scalar_t__ drv_priv; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*) ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct iwl_mvm*,struct ieee80211_vif*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct iwl_mvm*,struct ieee80211_vif*,struct ieee80211_ftm_responder_params*) ; 
 int FUNC4 (struct iwl_mvm*,struct iwl_mvm_phy_ctxt*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct iwl_mvm_vif* FUNC5 (struct ieee80211_vif*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct ieee80211_chanctx_conf* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 

int FUNC10(struct iwl_mvm *mvm, struct ieee80211_vif *vif)
{
	struct iwl_mvm_vif *mvmvif = FUNC5(vif);
	struct ieee80211_ftm_responder_params *params;
	struct ieee80211_chanctx_conf ctx, *pctx;
	u16 *phy_ctxt_id;
	struct iwl_mvm_phy_ctxt *phy_ctxt;
	int ret;

	params = vif->bss_conf.ftmr_params;

	FUNC6(&mvm->mutex);

	if (FUNC1(!vif->bss_conf.ftm_responder))
		return -EINVAL;

	if (vif->p2p || vif->type != NL80211_IFTYPE_AP ||
	    !mvmvif->ap_ibss_active) {
		FUNC0(mvm, "Cannot start responder, not in AP mode\n");
		return -EIO;
	}

	FUNC8();
	pctx = FUNC7(vif->chanctx_conf);
	/* Copy the ctx to unlock the rcu and send the phy ctxt. We don't care
	 * about changes in the ctx after releasing the lock because the driver
	 * is still protected by the mutex. */
	ctx = *pctx;
	phy_ctxt_id  = (u16 *)pctx->drv_priv;
	FUNC9();

	phy_ctxt = &mvm->phy_ctxts[*phy_ctxt_id];
	ret = FUNC4(mvm, phy_ctxt, &ctx.def,
				       ctx.rx_chains_static,
				       ctx.rx_chains_dynamic);
	if (ret)
		return ret;

	ret = FUNC2(mvm, vif, &ctx.def);
	if (ret)
		return ret;

	if (params)
		ret = FUNC3(mvm, vif, params);

	return ret;
}