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
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*,int /*<<< orphan*/ ,int) ; 
 struct qlcnic_adapter* FUNC1 (struct net_device*) ; 
 int FUNC2 (struct qlcnic_adapter*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct net_device *netdev, __be16 proto, u16 vid)
{
	struct qlcnic_adapter *adapter = FUNC1(netdev);
	int err;

	if (FUNC3(adapter)) {
		err = FUNC2(adapter, vid, 1);
		if (err) {
			FUNC0(netdev,
				   "Cannot add VLAN filter for VLAN id %d, err=%d",
				   vid, err);
			return err;
		}
	}

	FUNC4(vid, adapter->vlans);
	return 0;
}