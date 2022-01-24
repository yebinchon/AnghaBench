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
struct usbnet {int /*<<< orphan*/  net; } ;
struct rndis_wlan_private {int connected; int /*<<< orphan*/  bssid; struct usbnet* usbdev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct usbnet*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct rndis_wlan_private* FUNC3 (struct wiphy*) ; 

__attribute__((used)) static int FUNC4(struct wiphy *wiphy, struct net_device *dev)
{
	struct rndis_wlan_private *priv = FUNC3(wiphy);
	struct usbnet *usbdev = priv->usbdev;

	FUNC2(usbdev->net, "cfg80211.leave_ibss()\n");

	priv->connected = false;
	FUNC1(priv->bssid);

	return FUNC0(usbdev);
}