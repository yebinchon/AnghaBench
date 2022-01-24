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
struct port_info {int /*<<< orphan*/  port_id; struct adapter* adapter; } ;
struct net_device {int dummy; } ;
struct adapter {scalar_t__ open_device_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__*) ; 
 struct port_info* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,struct port_info*,int,int) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev)
{
	struct port_info *pi = FUNC2(dev);
	struct adapter *adapter = pi->adapter;

	FUNC4(dev);
	FUNC3(dev);
	FUNC5(adapter, pi, false, false);

	FUNC1(pi->port_id, &adapter->open_device_map);
	if (adapter->open_device_map == 0)
		FUNC0(adapter);
	return 0;
}