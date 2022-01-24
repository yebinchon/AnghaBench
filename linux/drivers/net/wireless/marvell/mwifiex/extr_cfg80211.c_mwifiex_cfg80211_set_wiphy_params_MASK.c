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
struct wiphy {int /*<<< orphan*/  frag_threshold; int /*<<< orphan*/  rts_threshold; int /*<<< orphan*/  retry_long; } ;
struct mwifiex_uap_bss_param {int /*<<< orphan*/  retry_limit; int /*<<< orphan*/  frag_threshold; int /*<<< orphan*/  rts_threshold; } ;
struct mwifiex_private {int bss_role; int /*<<< orphan*/  media_connected; int /*<<< orphan*/  bss_started; } ;
struct mwifiex_adapter {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HostCmd_ACT_GEN_SET ; 
 int /*<<< orphan*/  HostCmd_CMD_UAP_SYS_CONFIG ; 
 int /*<<< orphan*/  MWIFIEX_BSS_ROLE_ANY ; 
#define  MWIFIEX_BSS_ROLE_STA 129 
#define  MWIFIEX_BSS_ROLE_UAP 128 
 int /*<<< orphan*/  UAP_BSS_PARAMS_I ; 
 int WIPHY_PARAM_FRAG_THRESHOLD ; 
 int WIPHY_PARAM_RETRY_LONG ; 
 int WIPHY_PARAM_RTS_THRESHOLD ; 
 int /*<<< orphan*/  FUNC0 (struct mwifiex_uap_bss_param*) ; 
 struct mwifiex_uap_bss_param* FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct mwifiex_adapter* FUNC2 (struct wiphy*) ; 
 int /*<<< orphan*/  FUNC3 (struct mwifiex_adapter*,int /*<<< orphan*/ ,char*) ; 
 struct mwifiex_private* FUNC4 (struct mwifiex_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct mwifiex_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mwifiex_uap_bss_param*,int) ; 
 int FUNC6 (struct mwifiex_private*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct mwifiex_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mwifiex_uap_bss_param*) ; 

__attribute__((used)) static int
FUNC9(struct wiphy *wiphy, u32 changed)
{
	struct mwifiex_adapter *adapter = FUNC2(wiphy);
	struct mwifiex_private *priv;
	struct mwifiex_uap_bss_param *bss_cfg;
	int ret;

	priv = FUNC4(adapter, MWIFIEX_BSS_ROLE_ANY);

	switch (priv->bss_role) {
	case MWIFIEX_BSS_ROLE_UAP:
		if (priv->bss_started) {
			FUNC3(adapter, ERROR,
				    "cannot change wiphy params when bss started");
			return -EINVAL;
		}

		bss_cfg = FUNC1(sizeof(*bss_cfg), GFP_KERNEL);
		if (!bss_cfg)
			return -ENOMEM;

		FUNC8(bss_cfg);

		if (changed & WIPHY_PARAM_RTS_THRESHOLD)
			bss_cfg->rts_threshold = wiphy->rts_threshold;
		if (changed & WIPHY_PARAM_FRAG_THRESHOLD)
			bss_cfg->frag_threshold = wiphy->frag_threshold;
		if (changed & WIPHY_PARAM_RETRY_LONG)
			bss_cfg->retry_limit = wiphy->retry_long;

		ret = FUNC5(priv, HostCmd_CMD_UAP_SYS_CONFIG,
				       HostCmd_ACT_GEN_SET,
				       UAP_BSS_PARAMS_I, bss_cfg,
				       false);

		FUNC0(bss_cfg);
		if (ret) {
			FUNC3(adapter, ERROR,
				    "Failed to set wiphy phy params\n");
			return ret;
		}
		break;

	case MWIFIEX_BSS_ROLE_STA:
		if (priv->media_connected) {
			FUNC3(adapter, ERROR,
				    "cannot change wiphy params when connected");
			return -EINVAL;
		}
		if (changed & WIPHY_PARAM_RTS_THRESHOLD) {
			ret = FUNC7(priv,
					      wiphy->rts_threshold);
			if (ret)
				return ret;
		}
		if (changed & WIPHY_PARAM_FRAG_THRESHOLD) {
			ret = FUNC6(priv,
					       wiphy->frag_threshold);
			if (ret)
				return ret;
		}
		break;
	}

	return 0;
}