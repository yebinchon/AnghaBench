#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  (* enter_lplu ) (TYPE_3__*) ;} ;
struct TYPE_5__ {int reset_disable; TYPE_1__ ops; } ;
struct TYPE_6__ {TYPE_2__ phy; } ;
struct ixgbe_adapter {TYPE_3__ hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC6(struct ixgbe_adapter *adapter)
{
	FUNC4(adapter);

	if (adapter->hw.phy.ops.enter_lplu) {
		adapter->hw.phy.reset_disable = true;
		FUNC0(adapter);
		adapter->hw.phy.ops.enter_lplu(&adapter->hw);
		adapter->hw.phy.reset_disable = false;
	} else {
		FUNC0(adapter);
	}

	FUNC3(adapter);

	FUNC2(adapter);
	FUNC1(adapter);
}