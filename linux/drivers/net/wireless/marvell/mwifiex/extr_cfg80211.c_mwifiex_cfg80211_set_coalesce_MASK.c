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
struct wiphy {int dummy; } ;
struct mwifiex_private {int dummy; } ;
struct mwifiex_ds_coalesce_cfg {int num_of_rules; int /*<<< orphan*/ * rule; } ;
struct mwifiex_adapter {int dummy; } ;
struct cfg80211_coalesce {int n_rules; int /*<<< orphan*/ * rules; } ;
typedef  int /*<<< orphan*/  coalesce_cfg ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  HostCmd_ACT_GEN_SET ; 
 int /*<<< orphan*/  HostCmd_CMD_COALESCE_CFG ; 
 int /*<<< orphan*/  MWIFIEX_BSS_ROLE_STA ; 
 int /*<<< orphan*/  WARN ; 
 int /*<<< orphan*/  FUNC0 (struct mwifiex_ds_coalesce_cfg*,int /*<<< orphan*/ ,int) ; 
 struct mwifiex_adapter* FUNC1 (struct wiphy*) ; 
 int /*<<< orphan*/  FUNC2 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (struct mwifiex_private*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct mwifiex_private* FUNC4 (struct mwifiex_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mwifiex_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mwifiex_ds_coalesce_cfg*,int) ; 

__attribute__((used)) static int FUNC6(struct wiphy *wiphy,
					 struct cfg80211_coalesce *coalesce)
{
	struct mwifiex_adapter *adapter = FUNC1(wiphy);
	int i, ret;
	struct mwifiex_ds_coalesce_cfg coalesce_cfg;
	struct mwifiex_private *priv =
			FUNC4(adapter, MWIFIEX_BSS_ROLE_STA);

	FUNC0(&coalesce_cfg, 0, sizeof(coalesce_cfg));
	if (!coalesce) {
		FUNC2(adapter, WARN,
			    "Disable coalesce and reset all previous rules\n");
		return FUNC5(priv, HostCmd_CMD_COALESCE_CFG,
					HostCmd_ACT_GEN_SET, 0,
					&coalesce_cfg, true);
	}

	coalesce_cfg.num_of_rules = coalesce->n_rules;
	for (i = 0; i < coalesce->n_rules; i++) {
		ret = FUNC3(priv, &coalesce->rules[i],
						      &coalesce_cfg.rule[i]);
		if (ret) {
			FUNC2(adapter, ERROR,
				    "Recheck the patterns provided for rule %d\n",
				i + 1);
			return ret;
		}
	}

	return FUNC5(priv, HostCmd_CMD_COALESCE_CFG,
				HostCmd_ACT_GEN_SET, 0, &coalesce_cfg, true);
}