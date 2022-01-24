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
struct TYPE_2__ {scalar_t__ cac_started; } ;
struct mwifiex_private {int /*<<< orphan*/  dfs_chandef; int /*<<< orphan*/  netdev; int /*<<< orphan*/  dfs_cac_work; int /*<<< orphan*/  adapter; TYPE_1__ wdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MSG ; 
 int /*<<< orphan*/  NL80211_RADAR_CAC_ABORTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (struct mwifiex_private*,int /*<<< orphan*/ *) ; 

void FUNC4(struct mwifiex_private *priv)
{
	if (priv->wdev.cac_started) {
		if (FUNC3(priv, &priv->dfs_chandef))
			FUNC2(priv->adapter, ERROR,
				    "failed to stop CAC in FW\n");
		FUNC2(priv->adapter, MSG,
			    "Aborting delayed work for CAC.\n");
		FUNC0(&priv->dfs_cac_work);
		FUNC1(priv->netdev, &priv->dfs_chandef,
				   NL80211_RADAR_CAC_ABORTED, GFP_KERNEL);
	}
}