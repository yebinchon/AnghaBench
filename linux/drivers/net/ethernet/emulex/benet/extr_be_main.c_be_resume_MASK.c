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
struct be_adapter {struct net_device* netdev; } ;

/* Variables and functions */
 int FUNC0 (struct net_device*) ; 
 int FUNC1 (struct be_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct be_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;
	int status;

	status = FUNC1(adapter);
	if (status)
		return status;

	FUNC4();
	if (FUNC3(netdev))
		status = FUNC0(netdev);
	FUNC5();

	if (status)
		return status;

	FUNC2(netdev);

	return 0;
}