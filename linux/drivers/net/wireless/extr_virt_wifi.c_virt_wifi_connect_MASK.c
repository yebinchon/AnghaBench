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
struct virt_wifi_netdev_priv {int /*<<< orphan*/  connect_requested_bss; int /*<<< orphan*/  connect; int /*<<< orphan*/  is_up; scalar_t__ being_deleted; } ;
struct net_device {int dummy; } ;
struct cfg80211_connect_params {int /*<<< orphan*/  bssid; } ;

/* Variables and functions */
 int EBUSY ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct virt_wifi_netdev_priv* FUNC2 (struct net_device*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct wiphy*,char*) ; 

__attribute__((used)) static int FUNC5(struct wiphy *wiphy, struct net_device *netdev,
			     struct cfg80211_connect_params *sme)
{
	struct virt_wifi_netdev_priv *priv = FUNC2(netdev);
	bool could_schedule;

	if (priv->being_deleted || !priv->is_up)
		return -EBUSY;

	could_schedule = FUNC3(&priv->connect, HZ * 2);
	if (!could_schedule)
		return -EBUSY;

	if (sme->bssid)
		FUNC1(priv->connect_requested_bss, sme->bssid);
	else
		FUNC0(priv->connect_requested_bss);

	FUNC4(wiphy, "connect\n");

	return 0;
}