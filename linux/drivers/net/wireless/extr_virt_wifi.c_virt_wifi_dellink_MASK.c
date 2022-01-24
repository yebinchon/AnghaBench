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
struct virt_wifi_netdev_priv {int being_deleted; int /*<<< orphan*/  lowerdev; } ;
struct net_device {TYPE_1__* ieee80211_ptr; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct virt_wifi_netdev_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct net_device *dev,
			      struct list_head *head)
{
	struct virt_wifi_netdev_priv *priv = FUNC1(dev);

	if (dev->ieee80211_ptr)
		FUNC7(dev->ieee80211_ptr->wiphy);

	priv->being_deleted = true;
	FUNC6(dev);
	FUNC4(dev);

	FUNC2(priv->lowerdev);
	FUNC3(priv->lowerdev, dev);

	FUNC5(dev, head);
	FUNC0(THIS_MODULE);

	/* Deleting the wiphy is handled in the module destructor. */
}