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
typedef  int /*<<< orphan*/  u32 ;
struct lan743x_ptp {int /*<<< orphan*/  command_lock; } ;
struct lan743x_adapter {struct lan743x_ptp ptp; } ;

/* Variables and functions */
 int /*<<< orphan*/  PTP_CLOCK_NS ; 
 int /*<<< orphan*/  PTP_CLOCK_SEC ; 
 int /*<<< orphan*/  PTP_CLOCK_SUBNS ; 
 int /*<<< orphan*/  PTP_CMD_CTL ; 
 int /*<<< orphan*/  PTP_CMD_CTL_PTP_CLOCK_LOAD_ ; 
 int /*<<< orphan*/  FUNC0 (struct lan743x_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lan743x_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct lan743x_adapter *adapter,
				  u32 seconds, u32 nano_seconds,
				  u32 sub_nano_seconds)
{
	struct lan743x_ptp *ptp = &adapter->ptp;

	FUNC2(&ptp->command_lock);

	FUNC0(adapter, PTP_CLOCK_SEC, seconds);
	FUNC0(adapter, PTP_CLOCK_NS, nano_seconds);
	FUNC0(adapter, PTP_CLOCK_SUBNS, sub_nano_seconds);

	FUNC0(adapter, PTP_CMD_CTL, PTP_CMD_CTL_PTP_CLOCK_LOAD_);
	FUNC1(adapter, PTP_CMD_CTL_PTP_CLOCK_LOAD_);
	FUNC3(&ptp->command_lock);
}