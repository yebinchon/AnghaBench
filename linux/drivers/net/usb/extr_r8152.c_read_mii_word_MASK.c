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
struct r8152 {int /*<<< orphan*/  flags; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int R8152_PHY_ID ; 
 int /*<<< orphan*/  RTL8152_UNPLUG ; 
 struct r8152* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct r8152*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct net_device *netdev, int phy_id, int reg)
{
	struct r8152 *tp = FUNC0(netdev);
	int ret;

	if (FUNC2(RTL8152_UNPLUG, &tp->flags))
		return -ENODEV;

	if (phy_id != R8152_PHY_ID)
		return -EINVAL;

	ret = FUNC1(tp, reg);

	return ret;
}