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
struct wiphy {int dummy; } ;
struct net_device {int dummy; } ;
struct lbs_private {struct net_device* mesh_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  size; } ;
struct cmd_ds_802_11_ad_hoc_stop {TYPE_1__ hdr; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_802_11_AD_HOC_STOP ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct lbs_private*,int /*<<< orphan*/ ,struct cmd_ds_802_11_ad_hoc_stop*) ; 
 int /*<<< orphan*/  FUNC2 (struct lbs_private*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cmd_ds_802_11_ad_hoc_stop*,int /*<<< orphan*/ ,int) ; 
 struct lbs_private* FUNC4 (struct wiphy*) ; 

__attribute__((used)) static int FUNC5(struct wiphy *wiphy, struct net_device *dev)
{
	struct lbs_private *priv = FUNC4(wiphy);
	struct cmd_ds_802_11_ad_hoc_stop cmd;
	int ret = 0;

	if (dev == priv->mesh_dev)
		return -EOPNOTSUPP;

	FUNC3(&cmd, 0, sizeof(cmd));
	cmd.hdr.size = FUNC0(sizeof(cmd));
	ret = FUNC1(priv, CMD_802_11_AD_HOC_STOP, &cmd);

	/* TODO: consider doing this at MACREG_INT_CODE_ADHOC_BCN_LOST time */
	FUNC2(priv, true);

	return ret;
}