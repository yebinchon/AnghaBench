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
typedef  int u8 ;
typedef  int u16 ;
struct cb710_slot {int dummy; } ;

/* Variables and functions */
 int CB710_MMC_S0_FIFO_UNDERFLOW ; 
 int CB710_MMC_S1_RESET ; 
 int /*<<< orphan*/  CB710_MMC_STATUS0_PORT ; 
 int /*<<< orphan*/  CB710_MMC_STATUS1_PORT ; 
 int CB710_MMC_STATUS_ERROR_EVENTS ; 
 int /*<<< orphan*/  CB710_MMC_STATUS_PORT ; 
 int EIO ; 
 int FUNC0 (struct cb710_slot*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cb710_slot*) ; 
 int /*<<< orphan*/  FUNC2 (struct cb710_slot*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC4(struct cb710_slot *slot, u8 what)
{
	u16 status;

	status = FUNC0(slot, CB710_MMC_STATUS_PORT);

	if (status & CB710_MMC_S0_FIFO_UNDERFLOW) {
		/* it is just a guess, so log it */
		FUNC3(FUNC1(slot),
			"CHECK : ignoring bit 6 in status %04X\n", status);
		FUNC2(slot, CB710_MMC_STATUS0_PORT,
			CB710_MMC_S0_FIFO_UNDERFLOW);
		status &= ~CB710_MMC_S0_FIFO_UNDERFLOW;
	}

	if (status & CB710_MMC_STATUS_ERROR_EVENTS) {
		FUNC3(FUNC1(slot),
			"CHECK : returning EIO on status %04X\n", status);
		FUNC2(slot, CB710_MMC_STATUS0_PORT, status & 0xFF);
		FUNC2(slot, CB710_MMC_STATUS1_PORT,
			CB710_MMC_S1_RESET);
		return -EIO;
	}

	/* 'what' is a bit in MMC_STATUS1 */
	if ((status >> 8) & what) {
		FUNC2(slot, CB710_MMC_STATUS1_PORT, what);
		return 1;
	}

	return 0;
}