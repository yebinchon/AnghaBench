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
struct r8152 {int dummy; } ;

/* Variables and functions */
 int ALDPS_PROXY_MODE ; 
 int DIS_MCU_CLROOB ; 
 int LINK_LIST_READY ; 
 int /*<<< orphan*/  MCU_TYPE_PLA ; 
 int NOW_IS_OOB ; 
 int /*<<< orphan*/  PLA_BDC_CR ; 
 int /*<<< orphan*/  PLA_OOB_CTRL ; 
 int /*<<< orphan*/  PLA_RCR ; 
 int /*<<< orphan*/  PLA_RMS ; 
 int /*<<< orphan*/  PLA_RXFIFO_CTRL0 ; 
 int /*<<< orphan*/  PLA_RXFIFO_CTRL1 ; 
 int /*<<< orphan*/  PLA_RXFIFO_CTRL2 ; 
 int /*<<< orphan*/  PLA_SFF_STS_7 ; 
 int RCR_AB ; 
 int RCR_AM ; 
 int RCR_APM ; 
 int RE_INIT_LL ; 
 int RTL8152_RMS ; 
 int RXFIFO_THR1_OOB ; 
 int RXFIFO_THR2_OOB ; 
 int RXFIFO_THR3_OOB ; 
 int FUNC0 (struct r8152*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct r8152*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct r8152*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct r8152*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct r8152*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct r8152*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct r8152*) ; 
 int /*<<< orphan*/  FUNC7 (struct r8152*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct r8152*,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 

__attribute__((used)) static void FUNC10(struct r8152 *tp)
{
	u32 ocp_data;
	int i;

	ocp_data = FUNC0(tp, MCU_TYPE_PLA, PLA_OOB_CTRL);
	ocp_data &= ~NOW_IS_OOB;
	FUNC3(tp, MCU_TYPE_PLA, PLA_OOB_CTRL, ocp_data);

	FUNC4(tp, MCU_TYPE_PLA, PLA_RXFIFO_CTRL0, RXFIFO_THR1_OOB);
	FUNC4(tp, MCU_TYPE_PLA, PLA_RXFIFO_CTRL1, RXFIFO_THR2_OOB);
	FUNC4(tp, MCU_TYPE_PLA, PLA_RXFIFO_CTRL2, RXFIFO_THR3_OOB);

	FUNC6(tp);

	for (i = 0; i < 1000; i++) {
		ocp_data = FUNC0(tp, MCU_TYPE_PLA, PLA_OOB_CTRL);
		if (ocp_data & LINK_LIST_READY)
			break;
		FUNC9(1000, 2000);
	}

	ocp_data = FUNC2(tp, MCU_TYPE_PLA, PLA_SFF_STS_7);
	ocp_data |= RE_INIT_LL;
	FUNC5(tp, MCU_TYPE_PLA, PLA_SFF_STS_7, ocp_data);

	for (i = 0; i < 1000; i++) {
		ocp_data = FUNC0(tp, MCU_TYPE_PLA, PLA_OOB_CTRL);
		if (ocp_data & LINK_LIST_READY)
			break;
		FUNC9(1000, 2000);
	}

	FUNC5(tp, MCU_TYPE_PLA, PLA_RMS, RTL8152_RMS);

	FUNC7(tp, true);

	ocp_data = FUNC2(tp, MCU_TYPE_PLA, PLA_BDC_CR);
	ocp_data |= ALDPS_PROXY_MODE;
	FUNC5(tp, MCU_TYPE_PLA, PLA_BDC_CR, ocp_data);

	ocp_data = FUNC0(tp, MCU_TYPE_PLA, PLA_OOB_CTRL);
	ocp_data |= NOW_IS_OOB | DIS_MCU_CLROOB;
	FUNC3(tp, MCU_TYPE_PLA, PLA_OOB_CTRL, ocp_data);

	FUNC8(tp, false);

	ocp_data = FUNC1(tp, MCU_TYPE_PLA, PLA_RCR);
	ocp_data |= RCR_APM | RCR_AM | RCR_AB;
	FUNC4(tp, MCU_TYPE_PLA, PLA_RCR, ocp_data);
}