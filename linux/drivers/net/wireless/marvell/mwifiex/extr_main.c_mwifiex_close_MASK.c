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
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  wiphy; } ;
struct mwifiex_private {int scan_aborting; TYPE_1__ wdev; int /*<<< orphan*/  adapter; scalar_t__ sched_scanning; int /*<<< orphan*/ * scan_request; } ;
struct cfg80211_scan_info {int aborted; } ;

/* Variables and functions */
 int /*<<< orphan*/  INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct cfg80211_scan_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 struct mwifiex_private* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct mwifiex_private*) ; 

__attribute__((used)) static int
FUNC5(struct net_device *dev)
{
	struct mwifiex_private *priv = FUNC3(dev);

	if (priv->scan_request) {
		struct cfg80211_scan_info info = {
			.aborted = true,
		};

		FUNC2(priv->adapter, INFO,
			    "aborting scan on ndo_stop\n");
		FUNC0(priv->scan_request, &info);
		priv->scan_request = NULL;
		priv->scan_aborting = true;
	}

	if (priv->sched_scanning) {
		FUNC2(priv->adapter, INFO,
			    "aborting bgscan on ndo_stop\n");
		FUNC4(priv);
		FUNC1(priv->wdev.wiphy, 0);
	}

	return 0;
}