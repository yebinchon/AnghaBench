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
struct ena_com_dev {int dummy; } ;
struct ena_adapter {int dev_up_before_reset; int /*<<< orphan*/  flags; int /*<<< orphan*/  reset_reason; struct ena_com_dev* ena_dev; int /*<<< orphan*/  timer_service; struct net_device* netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENA_FLAG_DEVICE_RUNNING ; 
 int /*<<< orphan*/  ENA_FLAG_DEV_UP ; 
 int /*<<< orphan*/  ENA_FLAG_TRIGGER_RESET ; 
 int /*<<< orphan*/  ENA_REGS_RESET_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ena_com_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct ena_com_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct ena_com_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ena_com_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct ena_com_dev*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ena_com_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct ena_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct ena_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct ena_adapter*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(struct ena_adapter *adapter, bool graceful)
{
	struct net_device *netdev = adapter->netdev;
	struct ena_com_dev *ena_dev = adapter->ena_dev;
	bool dev_up;

	if (!FUNC12(ENA_FLAG_DEVICE_RUNNING, &adapter->flags))
		return;

	FUNC11(netdev);

	FUNC1(&adapter->timer_service);

	dev_up = FUNC12(ENA_FLAG_DEV_UP, &adapter->flags);
	adapter->dev_up_before_reset = dev_up;
	if (!graceful)
		FUNC6(ena_dev, false);

	if (FUNC12(ENA_FLAG_DEV_UP, &adapter->flags))
		FUNC9(adapter);

	/* Stop the device from sending AENQ events (in case reset flag is set
	 *  and device is up, ena_down() already reset the device.
	 */
	if (!(FUNC12(ENA_FLAG_TRIGGER_RESET, &adapter->flags) && dev_up))
		FUNC4(adapter->ena_dev, adapter->reset_reason);

	FUNC10(adapter);

	FUNC8(adapter);

	FUNC2(ena_dev);

	FUNC7(ena_dev);

	FUNC3(ena_dev);

	FUNC5(ena_dev);

	adapter->reset_reason = ENA_REGS_RESET_NORMAL;

	FUNC0(ENA_FLAG_TRIGGER_RESET, &adapter->flags);
	FUNC0(ENA_FLAG_DEVICE_RUNNING, &adapter->flags);
}