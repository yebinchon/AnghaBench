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
struct atl2_adapter {int /*<<< orphan*/  reset_task; } ;

/* Variables and functions */
 struct atl2_adapter* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct net_device *netdev)
{
	struct atl2_adapter *adapter = FUNC0(netdev);

	/* Do the reset outside of interrupt context */
	FUNC1(&adapter->reset_task);
}