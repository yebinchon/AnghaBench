#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct qlcnic_adapter {int portnum; TYPE_2__* ahw; } ;
struct TYPE_4__ {int sec_counter; } ;
struct TYPE_5__ {TYPE_1__ idc; } ;

/* Variables and functions */
 int EBUSY ; 
 int HZ ; 
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  QLC_83XX_IDC_DRV_AUDIT ; 
 int jiffies ; 
 scalar_t__ FUNC2 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct qlcnic_adapter*) ; 

__attribute__((used)) static int FUNC4(struct qlcnic_adapter *adapter,
					    u8 mode, int lock)
{
	u32 val;
	int seconds;

	if (lock) {
		if (FUNC2(adapter))
			return -EBUSY;
	}

	val = FUNC0(adapter->ahw, QLC_83XX_IDC_DRV_AUDIT);
	val |= (adapter->portnum & 0xf);
	val |= mode << 7;
	if (mode)
		seconds = jiffies / HZ - adapter->ahw->idc.sec_counter;
	else
		seconds = jiffies / HZ;

	val |= seconds << 8;
	FUNC1(adapter->ahw, QLC_83XX_IDC_DRV_AUDIT, val);
	adapter->ahw->idc.sec_counter = jiffies / HZ;

	if (lock)
		FUNC3(adapter);

	return 0;
}