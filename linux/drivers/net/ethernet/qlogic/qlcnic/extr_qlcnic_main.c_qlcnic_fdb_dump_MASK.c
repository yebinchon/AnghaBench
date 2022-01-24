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
struct sk_buff {int dummy; } ;
struct qlcnic_adapter {int flags; int /*<<< orphan*/  fdb_mac_learn; } ;
struct netlink_callback {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int QLCNIC_ESWITCH_ENABLED ; 
 int FUNC0 (struct sk_buff*,struct netlink_callback*,struct net_device*,struct net_device*,int*) ; 
 struct qlcnic_adapter* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct qlcnic_adapter*) ; 

__attribute__((used)) static int FUNC3(struct sk_buff *skb, struct netlink_callback *ncb,
			struct net_device *netdev,
			struct net_device *filter_dev, int *idx)
{
	struct qlcnic_adapter *adapter = FUNC1(netdev);
	int err = 0;

	if (!adapter->fdb_mac_learn)
		return FUNC0(skb, ncb, netdev, filter_dev, idx);

	if ((adapter->flags & QLCNIC_ESWITCH_ENABLED) ||
	    FUNC2(adapter))
		err = FUNC0(skb, ncb, netdev, filter_dev, idx);

	return err;
}