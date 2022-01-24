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
struct virt_wifi_netdev_priv {struct net_device* upperdev; } ;
struct notifier_block {int dummy; } ;
struct net_device {TYPE_1__* rtnl_link_ops; int /*<<< orphan*/  rx_handler_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* dellink ) (struct net_device*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  NETDEV_UNREGISTER 128 
 int NOTIFY_DONE ; 
 int /*<<< orphan*/  list_kill ; 
 struct net_device* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct virt_wifi_netdev_priv* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct notifier_block *this, unsigned long event,
			   void *ptr)
{
	struct net_device *lower_dev = FUNC1(ptr);
	struct virt_wifi_netdev_priv *priv;
	struct net_device *upper_dev;
	FUNC0(list_kill);

	if (!FUNC2(lower_dev))
		return NOTIFY_DONE;

	switch (event) {
	case NETDEV_UNREGISTER:
		priv = FUNC3(lower_dev->rx_handler_data);
		if (!priv)
			return NOTIFY_DONE;

		upper_dev = priv->upperdev;

		upper_dev->rtnl_link_ops->dellink(upper_dev, &list_kill);
		FUNC5(&list_kill);
		break;
	}

	return NOTIFY_DONE;
}