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
struct atl1c_adapter {struct net_device* netdev; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int FUNC0 (struct atl1c_adapter*) ; 
 scalar_t__ FUNC1 (struct atl1c_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct atl1c_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct atl1c_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct atl1c_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;
	int num;

	FUNC2(adapter);
	FUNC4(netdev);
	FUNC3(adapter);

	num = FUNC0(adapter);
	if (FUNC5(num == 0))
		return -ENOMEM;

	if (FUNC1(adapter))
		return -EIO;

	return 0;
}