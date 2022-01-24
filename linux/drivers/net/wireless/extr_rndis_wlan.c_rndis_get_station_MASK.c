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
typedef  int /*<<< orphan*/  u8 ;
struct wiphy {int dummy; } ;
struct usbnet {int dummy; } ;
struct station_info {int dummy; } ;
struct rndis_wlan_private {int /*<<< orphan*/  bssid; struct usbnet* usbdev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (struct usbnet*,struct station_info*) ; 
 struct rndis_wlan_private* FUNC2 (struct wiphy*) ; 

__attribute__((used)) static int FUNC3(struct wiphy *wiphy, struct net_device *dev,
			     const u8 *mac, struct station_info *sinfo)
{
	struct rndis_wlan_private *priv = FUNC2(wiphy);
	struct usbnet *usbdev = priv->usbdev;

	if (!FUNC0(priv->bssid, mac))
		return -ENOENT;

	FUNC1(usbdev, sinfo);

	return 0;
}