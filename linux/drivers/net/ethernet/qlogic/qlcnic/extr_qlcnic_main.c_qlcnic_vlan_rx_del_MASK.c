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
typedef  int /*<<< orphan*/  u16 ;
struct qlcnic_adapter {int /*<<< orphan*/  vlans; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*,int /*<<< orphan*/ ,int) ; 
 struct qlcnic_adapter* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct qlcnic_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct qlcnic_adapter*) ; 

__attribute__((used)) static int
FUNC6(struct net_device *netdev, __be16 proto, u16 vid)
{
	struct qlcnic_adapter *adapter = FUNC2(netdev);
	int err;

	if (FUNC5(adapter)) {
		err = FUNC4(adapter, vid, 0);
		if (err) {
			FUNC1(netdev,
				   "Cannot delete VLAN filter for VLAN id %d, err=%d",
				   vid, err);
			return err;
		}
	}

	FUNC3(netdev, NETDEV_DOWN);
	FUNC0(vid, adapter->vlans);
	return 0;
}