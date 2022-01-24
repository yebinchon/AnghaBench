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
struct r8152 {TYPE_1__* tx_info; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  urb; } ;

/* Variables and functions */
 int FIFO_EMPTY ; 
 int /*<<< orphan*/  MCU_TYPE_PLA ; 
 int /*<<< orphan*/  PLA_OOB_CTRL ; 
 int /*<<< orphan*/  PLA_RCR ; 
 int /*<<< orphan*/  PLA_TCR0 ; 
 int RCR_ACPT_ALL ; 
 int RTL8152_MAX_TX ; 
 int /*<<< orphan*/  RTL8152_UNPLUG ; 
 int TCR0_TX_EMPTY ; 
 int FUNC0 (struct r8152*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct r8152*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct r8152*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct r8152*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct r8152*) ; 
 int /*<<< orphan*/  FUNC5 (struct r8152*) ; 
 int /*<<< orphan*/  FUNC6 (struct r8152*) ; 
 int /*<<< orphan*/  FUNC7 (struct r8152*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 

__attribute__((used)) static void FUNC11(struct r8152 *tp)
{
	u32 ocp_data;
	int i;

	if (FUNC8(RTL8152_UNPLUG, &tp->flags)) {
		FUNC5(tp);
		return;
	}

	ocp_data = FUNC1(tp, MCU_TYPE_PLA, PLA_RCR);
	ocp_data &= ~RCR_ACPT_ALL;
	FUNC3(tp, MCU_TYPE_PLA, PLA_RCR, ocp_data);

	FUNC5(tp);

	for (i = 0; i < RTL8152_MAX_TX; i++)
		FUNC9(tp->tx_info[i].urb);

	FUNC7(tp, true);

	for (i = 0; i < 1000; i++) {
		ocp_data = FUNC0(tp, MCU_TYPE_PLA, PLA_OOB_CTRL);
		if ((ocp_data & FIFO_EMPTY) == FIFO_EMPTY)
			break;
		FUNC10(1000, 2000);
	}

	for (i = 0; i < 1000; i++) {
		if (FUNC2(tp, MCU_TYPE_PLA, PLA_TCR0) & TCR0_TX_EMPTY)
			break;
		FUNC10(1000, 2000);
	}

	FUNC6(tp);

	FUNC4(tp);
}