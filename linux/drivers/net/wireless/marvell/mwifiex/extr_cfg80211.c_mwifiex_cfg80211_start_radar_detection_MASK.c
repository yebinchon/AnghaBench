#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct mwifiex_radar_params {int /*<<< orphan*/  cac_time_ms; struct cfg80211_chan_def* chandef; } ;
struct TYPE_3__ {int is_11h_active; } ;
struct mwifiex_private {int /*<<< orphan*/  dfs_cac_work; int /*<<< orphan*/  dfs_cac_workqueue; int /*<<< orphan*/  dfs_chandef; TYPE_1__ state_11h; TYPE_2__* adapter; } ;
struct cfg80211_chan_def {int dummy; } ;
struct TYPE_4__ {scalar_t__ scan_processing; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  HostCmd_ACT_GEN_SET ; 
 int /*<<< orphan*/  HostCmd_CMD_CHAN_REPORT_REQUEST ; 
 int /*<<< orphan*/  INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct cfg80211_chan_def*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mwifiex_radar_params*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct mwifiex_private*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct mwifiex_private*) ; 
 struct mwifiex_private* FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (struct mwifiex_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mwifiex_radar_params*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct wiphy *wiphy,
				       struct net_device *dev,
				       struct cfg80211_chan_def *chandef,
				       u32 cac_time_ms)
{
	struct mwifiex_private *priv = FUNC6(dev);
	struct mwifiex_radar_params radar_params;

	if (priv->adapter->scan_processing) {
		FUNC4(priv->adapter, ERROR,
			    "radar detection: scan already in process...\n");
		return -EBUSY;
	}

	if (!FUNC5(priv)) {
		FUNC4(priv->adapter, INFO,
			    "Enable 11h extensions in FW\n");
		if (FUNC3(priv, true)) {
			FUNC4(priv->adapter, ERROR,
				    "Failed to activate 11h extensions!!");
			return -1;
		}
		priv->state_11h.is_11h_active = true;
	}

	FUNC1(&radar_params, 0, sizeof(struct mwifiex_radar_params));
	radar_params.chandef = chandef;
	radar_params.cac_time_ms = cac_time_ms;

	FUNC0(&priv->dfs_chandef, chandef, sizeof(priv->dfs_chandef));

	if (FUNC7(priv, HostCmd_CMD_CHAN_REPORT_REQUEST,
			     HostCmd_ACT_GEN_SET, 0, &radar_params, true))
		return -1;

	FUNC8(priv->dfs_cac_workqueue, &priv->dfs_cac_work,
			   FUNC2(cac_time_ms));
	return 0;
}