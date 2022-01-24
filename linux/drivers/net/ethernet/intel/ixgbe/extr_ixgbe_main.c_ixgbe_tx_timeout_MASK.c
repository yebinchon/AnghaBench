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
struct ixgbe_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ixgbe_adapter*) ; 
 struct ixgbe_adapter* FUNC1 (struct net_device*) ; 

__attribute__((used)) static void FUNC2(struct net_device *netdev)
{
	struct ixgbe_adapter *adapter = FUNC1(netdev);

	/* Do the reset outside of interrupt context */
	FUNC0(adapter);
}