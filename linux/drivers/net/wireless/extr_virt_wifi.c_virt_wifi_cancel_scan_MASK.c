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
struct virt_wifi_wiphy_priv {int /*<<< orphan*/ * scan_request; int /*<<< orphan*/  scan_result; } ;
struct cfg80211_scan_info {int aborted; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct cfg80211_scan_info*) ; 
 struct virt_wifi_wiphy_priv* FUNC2 (struct wiphy*) ; 

__attribute__((used)) static void FUNC3(struct wiphy *wiphy)
{
	struct virt_wifi_wiphy_priv *priv = FUNC2(wiphy);

	FUNC0(&priv->scan_result);
	/* Clean up dangling callbacks if necessary. */
	if (priv->scan_request) {
		struct cfg80211_scan_info scan_info = { .aborted = true };
		/* Schedules work which acquires and releases the rtnl lock. */
		FUNC1(priv->scan_request, &scan_info);
		priv->scan_request = NULL;
	}
}