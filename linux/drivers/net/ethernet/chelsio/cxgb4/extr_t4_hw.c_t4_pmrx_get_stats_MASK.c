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
typedef  int u64 ;
typedef  int u32 ;
struct TYPE_3__ {int pm_stats_cnt; } ;
struct TYPE_4__ {int /*<<< orphan*/  chip; TYPE_1__ arch; } ;
struct adapter {TYPE_2__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  PM_RX_DBG_CTRL_A ; 
 int /*<<< orphan*/  PM_RX_DBG_DATA_A ; 
 int /*<<< orphan*/  PM_RX_DBG_STAT_MSB_A ; 
 int /*<<< orphan*/  PM_RX_STAT_CONFIG_A ; 
 int /*<<< orphan*/  PM_RX_STAT_COUNT_A ; 
 int /*<<< orphan*/  PM_RX_STAT_LSB_A ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct adapter*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct adapter*,int /*<<< orphan*/ ,int) ; 

void FUNC5(struct adapter *adap, u32 cnt[], u64 cycles[])
{
	int i;
	u32 data[2];

	for (i = 0; i < adap->params.arch.pm_stats_cnt; i++) {
		FUNC4(adap, PM_RX_STAT_CONFIG_A, i + 1);
		cnt[i] = FUNC2(adap, PM_RX_STAT_COUNT_A);
		if (FUNC0(adap->params.chip)) {
			cycles[i] = FUNC3(adap, PM_RX_STAT_LSB_A);
		} else {
			FUNC1(adap, PM_RX_DBG_CTRL_A,
					 PM_RX_DBG_DATA_A, data, 2,
					 PM_RX_DBG_STAT_MSB_A);
			cycles[i] = (((u64)data[0] << 32) | data[1]);
		}
	}
}