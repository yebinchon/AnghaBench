#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ hw_addr; } ;
struct atlx_adapter {int /*<<< orphan*/  lock; TYPE_1__ hw; } ;
typedef  int /*<<< orphan*/  netdev_features_t ;

/* Variables and functions */
 scalar_t__ REG_MAC_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct atlx_adapter* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct net_device *netdev,
	netdev_features_t features)
{
	struct atlx_adapter *adapter = FUNC3(netdev);
	unsigned long flags;
	u32 ctrl;

	FUNC4(&adapter->lock, flags);
	/* atlx_irq_disable(adapter); FIXME: confirm/remove */
	ctrl = FUNC1(adapter->hw.hw_addr + REG_MAC_CTRL);
	FUNC0(features, &ctrl);
	FUNC2(ctrl, adapter->hw.hw_addr + REG_MAC_CTRL);
	/* atlx_irq_enable(adapter); FIXME */
	FUNC5(&adapter->lock, flags);
}