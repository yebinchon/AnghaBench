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
typedef  int u64 ;
struct wireless_dev {int /*<<< orphan*/  netdev; } ;
struct wiphy {int dummy; } ;
struct ieee80211_channel {int dummy; } ;
struct TYPE_2__ {int cookie; struct ieee80211_channel chan; } ;
struct mwifiex_private {int /*<<< orphan*/  adapter; TYPE_1__ roc_cfg; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  HostCmd_ACT_GEN_SET ; 
 int /*<<< orphan*/  INFO ; 
 int /*<<< orphan*/  FUNC0 (struct wireless_dev*,int,struct ieee80211_channel*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 struct mwifiex_private* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mwifiex_private*,int /*<<< orphan*/ ,struct ieee80211_channel*,unsigned int) ; 
 int FUNC4 () ; 

__attribute__((used)) static int
FUNC5(struct wiphy *wiphy,
				   struct wireless_dev *wdev,
				   struct ieee80211_channel *chan,
				   unsigned int duration, u64 *cookie)
{
	struct mwifiex_private *priv = FUNC2(wdev->netdev);
	int ret;

	if (!chan || !cookie) {
		FUNC1(priv->adapter, ERROR, "Invalid parameter for ROC\n");
		return -EINVAL;
	}

	if (priv->roc_cfg.cookie) {
		FUNC1(priv->adapter, INFO,
			    "info: ongoing ROC, cookie = 0x%llx\n",
			    priv->roc_cfg.cookie);
		return -EBUSY;
	}

	ret = FUNC3(priv, HostCmd_ACT_GEN_SET, chan,
					 duration);

	if (!ret) {
		*cookie = FUNC4() | 1;
		priv->roc_cfg.cookie = *cookie;
		priv->roc_cfg.chan = *chan;

		FUNC0(wdev, *cookie, chan,
					  duration, GFP_ATOMIC);

		FUNC1(priv->adapter, INFO,
			    "info: ROC, cookie = 0x%llx\n", *cookie);
	}

	return ret;
}