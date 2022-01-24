#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct timer_list {int dummy; } ;
struct ena_admin_host_info {int dummy; } ;
struct ena_adapter {int /*<<< orphan*/  timer_service; int /*<<< orphan*/  reset_task; int /*<<< orphan*/  netdev; int /*<<< orphan*/  flags; TYPE_2__* ena_dev; } ;
struct TYPE_3__ {struct ena_admin_host_info* host_info; int /*<<< orphan*/ * debug_area_virt_addr; } ;
struct TYPE_4__ {TYPE_1__ host_attr; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENA_FLAG_TRIGGER_RESET ; 
 scalar_t__ HZ ; 
 struct ena_adapter* adapter ; 
 int /*<<< orphan*/  FUNC0 (struct ena_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct ena_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct ena_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct ena_adapter*) ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC4 (struct ena_adapter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ena_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct ena_admin_host_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ena_wq ; 
 struct ena_adapter* FUNC7 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct ena_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timer_service ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(struct timer_list *t)
{
	struct ena_adapter *adapter = FUNC7(adapter, t, timer_service);
	u8 *debug_area = adapter->ena_dev->host_attr.debug_area_virt_addr;
	struct ena_admin_host_info *host_info =
		adapter->ena_dev->host_attr.host_info;

	FUNC3(adapter);

	FUNC0(adapter);

	FUNC2(adapter);

	FUNC1(adapter);

	if (debug_area)
		FUNC4(adapter, debug_area);

	if (host_info)
		FUNC6(host_info, adapter->netdev);

	if (FUNC12(FUNC11(ENA_FLAG_TRIGGER_RESET, &adapter->flags))) {
		FUNC9(adapter, drv, adapter->netdev,
			  "Trigger reset is on\n");
		FUNC5(adapter);
		FUNC10(ena_wq, &adapter->reset_task);
		return;
	}

	/* Reset the timer */
	FUNC8(&adapter->timer_service, jiffies + HZ);
}