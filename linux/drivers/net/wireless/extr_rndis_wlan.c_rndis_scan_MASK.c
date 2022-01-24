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
struct usbnet {int /*<<< orphan*/  net; } ;
struct rndis_wlan_private {scalar_t__ device_type; int /*<<< orphan*/  scan_work; int /*<<< orphan*/  workqueue; struct cfg80211_scan_request* scan_request; } ;
struct net_device {int dummy; } ;
struct cfg80211_scan_request {TYPE_1__* wdev; } ;
struct TYPE_2__ {struct net_device* netdev; } ;

/* Variables and functions */
 int EBUSY ; 
 int HZ ; 
 scalar_t__ RNDIS_BCM4320A ; 
 int SCAN_DELAY_JIFFIES ; 
 struct rndis_wlan_private* FUNC0 (struct usbnet*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct usbnet* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct usbnet*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct usbnet*) ; 

__attribute__((used)) static int FUNC6(struct wiphy *wiphy,
			struct cfg80211_scan_request *request)
{
	struct net_device *dev = request->wdev->netdev;
	struct usbnet *usbdev = FUNC2(dev);
	struct rndis_wlan_private *priv = FUNC0(usbdev);
	int ret;
	int delay = SCAN_DELAY_JIFFIES;

	FUNC1(usbdev->net, "cfg80211.scan\n");

	/* Get current bssid list from device before new scan, as new scan
	 * clears internal bssid list.
	 */
	FUNC4(usbdev, NULL, NULL);

	if (priv->scan_request && priv->scan_request != request)
		return -EBUSY;

	priv->scan_request = request;

	ret = FUNC5(usbdev);
	if (ret == 0) {
		if (priv->device_type == RNDIS_BCM4320A)
			delay = HZ;

		/* Wait before retrieving scan results from device */
		FUNC3(priv->workqueue, &priv->scan_work, delay);
	}

	return ret;
}