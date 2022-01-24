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
typedef  int u32 ;
struct timespec64 {int tv_sec; int /*<<< orphan*/  tv_nsec; } ;
struct ocelot {int /*<<< orphan*/  ptp_clock_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  PTP_PIN_ACTION_SAVE ; 
 int /*<<< orphan*/  PTP_PIN_CFG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int PTP_PIN_CFG_ACTION_MASK ; 
 int PTP_PIN_CFG_DOM ; 
 int PTP_PIN_CFG_SYNC ; 
 int /*<<< orphan*/  PTP_PIN_TOD_SEC_LSB ; 
 int /*<<< orphan*/  SYS_PTP_TXSTAMP ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int SYS_PTP_TXSTAMP_PTP_TXSTAMP_SEC ; 
 int /*<<< orphan*/  TOD_ACC_PIN ; 
 int FUNC2 (struct ocelot*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct ocelot*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ocelot*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC7(struct ocelot *ocelot, struct timespec64 *ts)
{
	unsigned long flags;
	u32 val;

	FUNC5(&ocelot->ptp_clock_lock, flags);

	/* Read current PTP time to get seconds */
	val = FUNC3(ocelot, PTP_PIN_CFG, TOD_ACC_PIN);

	val &= ~(PTP_PIN_CFG_SYNC | PTP_PIN_CFG_ACTION_MASK | PTP_PIN_CFG_DOM);
	val |= FUNC0(PTP_PIN_ACTION_SAVE);
	FUNC4(ocelot, val, PTP_PIN_CFG, TOD_ACC_PIN);
	ts->tv_sec = FUNC3(ocelot, PTP_PIN_TOD_SEC_LSB, TOD_ACC_PIN);

	/* Read packet HW timestamp from FIFO */
	val = FUNC2(ocelot, SYS_PTP_TXSTAMP);
	ts->tv_nsec = FUNC1(val);

	/* Sec has incremented since the ts was registered */
	if ((ts->tv_sec & 0x1) != !!(val & SYS_PTP_TXSTAMP_PTP_TXSTAMP_SEC))
		ts->tv_sec--;

	FUNC6(&ocelot->ptp_clock_lock, flags);
}