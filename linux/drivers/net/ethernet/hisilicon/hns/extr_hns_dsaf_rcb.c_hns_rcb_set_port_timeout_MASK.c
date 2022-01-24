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
typedef  int u32 ;
struct rcb_common_cb {TYPE_1__* dsaf_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dsaf_ver; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int HNS_RCB_CLK_FREQ_MHZ ; 
 int HNS_RCB_DEF_GAP_TIME_USECS ; 
 scalar_t__ RCB_CFG_OVERTIME_REG ; 
 scalar_t__ RCB_PORT_CFG_OVERTIME_REG ; 
 scalar_t__ RCB_PORT_INT_GAPTIME_REG ; 
 int /*<<< orphan*/  FUNC2 (struct rcb_common_cb*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC3(
	struct rcb_common_cb *rcb_common, u32 port_idx, u32 timeout)
{
	if (FUNC0(rcb_common->dsaf_dev->dsaf_ver)) {
		FUNC2(rcb_common, RCB_CFG_OVERTIME_REG,
			       timeout * HNS_RCB_CLK_FREQ_MHZ);
	} else if (!FUNC1(rcb_common->dsaf_dev)) {
		if (timeout > HNS_RCB_DEF_GAP_TIME_USECS)
			FUNC2(rcb_common,
				       RCB_PORT_INT_GAPTIME_REG + port_idx * 4,
				       HNS_RCB_DEF_GAP_TIME_USECS);
		else
			FUNC2(rcb_common,
				       RCB_PORT_INT_GAPTIME_REG + port_idx * 4,
				       timeout);

		FUNC2(rcb_common,
			       RCB_PORT_CFG_OVERTIME_REG + port_idx * 4,
			       timeout);
	} else {
		FUNC2(rcb_common,
			       RCB_PORT_CFG_OVERTIME_REG + port_idx * 4,
			       timeout);
	}
}