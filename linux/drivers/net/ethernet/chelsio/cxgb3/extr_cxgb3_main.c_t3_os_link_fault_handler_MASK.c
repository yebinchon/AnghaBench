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
struct port_info {int link_fault; } ;
struct net_device {int dummy; } ;
struct adapter {int /*<<< orphan*/  work_lock; struct net_device** port; } ;

/* Variables and functions */
 struct port_info* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct adapter *adapter, int port_id)
{
	struct net_device *netdev = adapter->port[port_id];
	struct port_info *pi = FUNC0(netdev);

	FUNC1(&adapter->work_lock);
	pi->link_fault = 1;
	FUNC2(&adapter->work_lock);
}