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
struct atl1_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct atl1_adapter*) ; 
 int FUNC1 (struct atl1_adapter*) ; 
 int FUNC2 (struct atl1_adapter*) ; 
 struct atl1_adapter* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev)
{
	struct atl1_adapter *adapter = FUNC3(netdev);
	int err;

	FUNC4(netdev);

	/* allocate transmit descriptors */
	err = FUNC1(adapter);
	if (err)
		return err;

	err = FUNC2(adapter);
	if (err)
		goto err_up;

	return 0;

err_up:
	FUNC0(adapter);
	return err;
}