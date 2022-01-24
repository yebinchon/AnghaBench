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
struct net_device {int mtu; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG0_MAXLEN_MASK ; 
 int CONFIG0_MAXLEN_SHIFT ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev, int new_mtu)
{
	int max_len = FUNC2(new_mtu);

	if (max_len < 0)
		return -EINVAL;

	FUNC0(netdev);

	netdev->mtu = new_mtu;
	FUNC3(netdev, max_len << CONFIG0_MAXLEN_SHIFT,
				CONFIG0_MAXLEN_MASK);

	FUNC4(netdev);

	FUNC1(netdev);

	return 0;
}