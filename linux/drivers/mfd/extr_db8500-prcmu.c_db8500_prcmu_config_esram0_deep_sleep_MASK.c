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
typedef  int u8 ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  work; } ;

/* Variables and functions */
 int DDR_PWR_STATE_OFFHIGHLAT ; 
 int DDR_PWR_STATE_ON ; 
 int EINVAL ; 
 int ESRAM0_DEEP_SLEEP_STATE_OFF ; 
 int ESRAM0_DEEP_SLEEP_STATE_RET ; 
 int MB4H_MEM_ST ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  PRCM_MBOX_CPU_SET ; 
 int /*<<< orphan*/  PRCM_MBOX_CPU_VAL ; 
 scalar_t__ PRCM_MBOX_HEADER_REQ_MB4 ; 
 scalar_t__ PRCM_REQ_MB4_DDR_ST_AP_DEEP_IDLE ; 
 scalar_t__ PRCM_REQ_MB4_DDR_ST_AP_SLEEP_IDLE ; 
 scalar_t__ PRCM_REQ_MB4_ESRAM0_ST ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__ mb4_transfer ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ tcdm_base ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 

int FUNC8(u8 state)
{
	if ((state > ESRAM0_DEEP_SLEEP_STATE_RET) ||
	    (state < ESRAM0_DEEP_SLEEP_STATE_OFF))
		return -EINVAL;

	FUNC2(&mb4_transfer.lock);

	while (FUNC4(PRCM_MBOX_CPU_VAL) & FUNC0(4))
		FUNC1();

	FUNC6(MB4H_MEM_ST, (tcdm_base + PRCM_MBOX_HEADER_REQ_MB4));
	FUNC6(((DDR_PWR_STATE_OFFHIGHLAT << 4) | DDR_PWR_STATE_ON),
	       (tcdm_base + PRCM_REQ_MB4_DDR_ST_AP_SLEEP_IDLE));
	FUNC6(DDR_PWR_STATE_ON,
	       (tcdm_base + PRCM_REQ_MB4_DDR_ST_AP_DEEP_IDLE));
	FUNC6(state, (tcdm_base + PRCM_REQ_MB4_ESRAM0_ST));

	FUNC7(FUNC0(4), PRCM_MBOX_CPU_SET);
	FUNC5(&mb4_transfer.work);

	FUNC3(&mb4_transfer.lock);

	return 0;
}