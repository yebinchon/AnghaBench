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
struct iwl_mvm_phy_ctxt {int dummy; } ;
struct iwl_mvm {int /*<<< orphan*/  mutex; struct iwl_mvm_phy_ctxt* phy_ctxts; } ;
struct ieee80211_chanctx_conf {scalar_t__ drv_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,struct iwl_mvm_phy_ctxt*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct iwl_mvm *mvm,
				     struct ieee80211_chanctx_conf *ctx)
{
	u16 *phy_ctxt_id = (u16 *)ctx->drv_priv;
	struct iwl_mvm_phy_ctxt *phy_ctxt = &mvm->phy_ctxts[*phy_ctxt_id];

	FUNC1(&mvm->mutex);

	FUNC0(mvm, phy_ctxt);
}