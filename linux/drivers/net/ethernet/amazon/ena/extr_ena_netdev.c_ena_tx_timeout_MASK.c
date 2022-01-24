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
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_timeout; } ;
struct ena_adapter {int /*<<< orphan*/  syncp; TYPE_1__ dev_stats; int /*<<< orphan*/  reset_reason; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENA_FLAG_TRIGGER_RESET ; 
 int /*<<< orphan*/  ENA_REGS_RESET_OS_NETDEV_WD ; 
 struct ena_adapter* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ena_adapter*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tx_err ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev)
{
	struct ena_adapter *adapter = FUNC0(dev);

	/* Change the state of the device to trigger reset
	 * Check that we are not in the middle or a trigger already
	 */

	if (FUNC2(ENA_FLAG_TRIGGER_RESET, &adapter->flags))
		return;

	adapter->reset_reason = ENA_REGS_RESET_OS_NETDEV_WD;
	FUNC3(&adapter->syncp);
	adapter->dev_stats.tx_timeout++;
	FUNC4(&adapter->syncp);

	FUNC1(adapter, tx_err, dev, "Transmit time out\n");
}