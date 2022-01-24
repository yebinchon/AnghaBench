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
struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;
struct atl1_adapter {int /*<<< orphan*/  lock; int /*<<< orphan*/  mii; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ifreq*) ; 
 struct atl1_adapter* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct net_device *netdev, struct ifreq *ifr, int cmd)
{
	struct atl1_adapter *adapter = FUNC2(netdev);
	unsigned long flags;
	int retval;

	if (!FUNC3(netdev))
		return -EINVAL;

	FUNC4(&adapter->lock, flags);
	retval = FUNC0(&adapter->mii, FUNC1(ifr), cmd, NULL);
	FUNC5(&adapter->lock, flags);

	return retval;
}