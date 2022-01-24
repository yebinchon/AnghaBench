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
typedef  size_t u16 ;
struct iwl_mvm_vif {struct iwl_mvm* mvm; } ;
struct iwl_mvm_phy_ctxt {int dummy; } ;
struct iwl_mvm {size_t dbgfs_rx_phyinfo; int /*<<< orphan*/  mutex; struct iwl_mvm_phy_ctxt* phy_ctxts; } ;
struct ieee80211_vif {int /*<<< orphan*/  chanctx_conf; } ;
struct ieee80211_chanctx_conf {int /*<<< orphan*/  rx_chains_dynamic; int /*<<< orphan*/  rx_chains_static; int /*<<< orphan*/  min_def; scalar_t__ drv_priv; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct iwl_mvm*,struct iwl_mvm_phy_ctxt*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct iwl_mvm_vif* FUNC1 (struct ieee80211_vif*) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct ieee80211_chanctx_conf* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static ssize_t FUNC8(struct ieee80211_vif *vif, char *buf,
					  size_t count, loff_t *ppos)
{
	struct iwl_mvm_vif *mvmvif = FUNC1(vif);
	struct iwl_mvm *mvm = mvmvif->mvm;
	struct ieee80211_chanctx_conf *chanctx_conf;
	struct iwl_mvm_phy_ctxt *phy_ctxt;
	u16 value;
	int ret;

	ret = FUNC2(buf, 0, &value);
	if (ret)
		return ret;

	FUNC3(&mvm->mutex);
	FUNC6();

	chanctx_conf = FUNC5(vif->chanctx_conf);
	/* make sure the channel context is assigned */
	if (!chanctx_conf) {
		FUNC7();
		FUNC4(&mvm->mutex);
		return -EINVAL;
	}

	phy_ctxt = &mvm->phy_ctxts[*(u16 *)chanctx_conf->drv_priv];
	FUNC7();

	mvm->dbgfs_rx_phyinfo = value;

	ret = FUNC0(mvm, phy_ctxt, &chanctx_conf->min_def,
				       chanctx_conf->rx_chains_static,
				       chanctx_conf->rx_chains_dynamic);
	FUNC4(&mvm->mutex);

	return ret ?: count;
}