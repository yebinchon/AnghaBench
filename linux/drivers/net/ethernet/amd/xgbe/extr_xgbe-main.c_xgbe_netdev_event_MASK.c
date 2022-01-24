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
struct xgbe_prv_data {int dummy; } ;
struct notifier_block {int dummy; } ;
struct net_device {scalar_t__ netdev_ops; } ;

/* Variables and functions */
#define  NETDEV_CHANGENAME 128 
 int NOTIFY_DONE ; 
 struct net_device* FUNC0 (void*) ; 
 struct xgbe_prv_data* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct xgbe_prv_data*) ; 
 scalar_t__ FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct notifier_block *nb, unsigned long event,
			     void *data)
{
	struct net_device *netdev = FUNC0(data);
	struct xgbe_prv_data *pdata = FUNC1(netdev);

	if (netdev->netdev_ops != FUNC3())
		goto out;

	switch (event) {
	case NETDEV_CHANGENAME:
		FUNC2(pdata);
		break;

	default:
		break;
	}

out:
	return NOTIFY_DONE;
}