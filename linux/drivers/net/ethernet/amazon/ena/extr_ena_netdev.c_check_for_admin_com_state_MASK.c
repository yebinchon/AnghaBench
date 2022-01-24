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
struct TYPE_2__ {int /*<<< orphan*/  admin_q_pause; } ;
struct ena_adapter {int /*<<< orphan*/  flags; int /*<<< orphan*/  reset_reason; int /*<<< orphan*/  syncp; TYPE_1__ dev_stats; int /*<<< orphan*/  netdev; int /*<<< orphan*/  ena_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENA_FLAG_TRIGGER_RESET ; 
 int /*<<< orphan*/  ENA_REGS_RESET_ADMIN_TO ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ena_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct ena_adapter *adapter)
{
	if (FUNC5(!FUNC0(adapter->ena_dev))) {
		FUNC1(adapter, drv, adapter->netdev,
			  "ENA admin queue is not in running state!\n");
		FUNC3(&adapter->syncp);
		adapter->dev_stats.admin_q_pause++;
		FUNC4(&adapter->syncp);
		adapter->reset_reason = ENA_REGS_RESET_ADMIN_TO;
		FUNC2(ENA_FLAG_TRIGGER_RESET, &adapter->flags);
	}
}