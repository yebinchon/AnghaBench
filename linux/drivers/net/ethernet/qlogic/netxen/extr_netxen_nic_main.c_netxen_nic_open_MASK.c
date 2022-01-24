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
struct netxen_adapter {scalar_t__ driver_mismatch; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (struct netxen_adapter*,struct net_device*) ; 
 struct netxen_adapter* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int FUNC3 (struct netxen_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct netxen_adapter*) ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev)
{
	struct netxen_adapter *adapter = FUNC1(netdev);
	int err = 0;

	if (adapter->driver_mismatch)
		return -EIO;

	err = FUNC3(adapter);
	if (err)
		return err;

	err = FUNC0(adapter, netdev);
	if (err)
		goto err_out;

	FUNC2(netdev);

	return 0;

err_out:
	FUNC4(adapter);
	return err;
}