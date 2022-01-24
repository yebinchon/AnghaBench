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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;
struct iwl_phy_context_cmd {int dummy; } ;
struct iwl_mvm_phy_ctxt {int dummy; } ;
struct iwl_mvm {int dummy; } ;
struct cfg80211_chan_def {int dummy; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,int) ; 
 int /*<<< orphan*/  PHY_CONTEXT_CMD ; 
 scalar_t__ FUNC1 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,struct iwl_phy_context_cmd*,struct cfg80211_chan_def*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_mvm_phy_ctxt*,struct iwl_phy_context_cmd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct iwl_mvm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,struct iwl_phy_context_cmd*) ; 

__attribute__((used)) static int FUNC5(struct iwl_mvm *mvm,
				  struct iwl_mvm_phy_ctxt *ctxt,
				  struct cfg80211_chan_def *chandef,
				  u8 chains_static, u8 chains_dynamic,
				  u32 action, u32 apply_time)
{
	struct iwl_phy_context_cmd cmd;
	int ret;
	u16 len = sizeof(cmd) - FUNC1(mvm);

	/* Set the command header fields */
	FUNC3(ctxt, &cmd, action, apply_time);

	/* Set the command data */
	FUNC2(mvm, &cmd, chandef,
				  chains_static, chains_dynamic);

	ret = FUNC4(mvm, PHY_CONTEXT_CMD, 0, len, &cmd);
	if (ret)
		FUNC0(mvm, "PHY ctxt cmd error. ret=%d\n", ret);
	return ret;
}