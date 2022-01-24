#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  parent; } ;
struct net_device {TYPE_3__ dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  autoneg; } ;
struct TYPE_5__ {TYPE_1__ mac; } ;
struct e1000_adapter {TYPE_2__ hw; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct e1000_adapter*) ; 
 struct e1000_adapter* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev)
{
	struct e1000_adapter *adapter = FUNC1(netdev);

	if (!FUNC2(netdev))
		return -EAGAIN;

	if (!adapter->hw.mac.autoneg)
		return -EINVAL;

	FUNC3(netdev->dev.parent);
	FUNC0(adapter);
	FUNC4(netdev->dev.parent);

	return 0;
}