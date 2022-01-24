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
typedef  scalar_t__ u32 ;
struct qlcnic_adapter {TYPE_1__* ahw; struct net_device* netdev; } ;
struct net_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {scalar_t__ temp; } ;

/* Variables and functions */
 int /*<<< orphan*/  QLCNIC_ASIC_TEMP ; 
 scalar_t__ QLCNIC_TEMP_NORMAL ; 
 scalar_t__ QLCNIC_TEMP_PANIC ; 
 scalar_t__ QLCNIC_TEMP_WARN ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QLC_83XX_ASIC_TEMP ; 
 scalar_t__ FUNC1 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 scalar_t__ FUNC4 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC5 (struct qlcnic_adapter*) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 

int FUNC8(struct qlcnic_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;
	u32 temp_state, temp_val, temp = 0;
	int rv = 0;

	if (FUNC5(adapter))
		temp = FUNC0(adapter->ahw, QLC_83XX_ASIC_TEMP);

	if (FUNC4(adapter))
		temp = FUNC1(adapter, QLCNIC_ASIC_TEMP);

	temp_state = FUNC6(temp);
	temp_val = FUNC7(temp);

	if (temp_state == QLCNIC_TEMP_PANIC) {
		FUNC2(&netdev->dev,
		       "Device temperature %d degrees C exceeds"
		       " maximum allowed. Hardware has been shut down.\n",
		       temp_val);
		rv = 1;
	} else if (temp_state == QLCNIC_TEMP_WARN) {
		if (adapter->ahw->temp == QLCNIC_TEMP_NORMAL) {
			FUNC2(&netdev->dev,
			       "Device temperature %d degrees C "
			       "exceeds operating range."
			       " Immediate action needed.\n",
			       temp_val);
		}
	} else {
		if (adapter->ahw->temp == QLCNIC_TEMP_WARN) {
			FUNC3(&netdev->dev,
			       "Device temperature is now %d degrees C"
			       " in normal range.\n", temp_val);
		}
	}
	adapter->ahw->temp = temp_state;
	return rv;
}