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
struct igc_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct igc_adapter*) ; 
 struct igc_adapter* FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *netdev)
{
	struct igc_adapter *adapter = FUNC1(netdev);

	if (FUNC2(netdev))
		FUNC0(adapter);
	return 0;
}