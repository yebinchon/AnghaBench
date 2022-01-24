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
struct r8152 {int version; } ;

/* Variables and functions */
 int /*<<< orphan*/  MCU_TYPE_PLA ; 
 int OOB_TEREDO_EN ; 
 int /*<<< orphan*/  PLA_REALWOW_TIMER ; 
 int /*<<< orphan*/  PLA_TEREDO_CFG ; 
 int /*<<< orphan*/  PLA_TEREDO_TIMER ; 
 int /*<<< orphan*/  PLA_WDT6_CTRL ; 
#define  RTL_VER_01 136 
#define  RTL_VER_02 135 
#define  RTL_VER_03 134 
#define  RTL_VER_04 133 
#define  RTL_VER_05 132 
#define  RTL_VER_06 131 
#define  RTL_VER_07 130 
#define  RTL_VER_08 129 
#define  RTL_VER_09 128 
 int TEREDO_RS_EVENT_MASK ; 
 int TEREDO_SEL ; 
 int WDT6_SET_MODE ; 
 int FUNC0 (struct r8152*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct r8152*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct r8152*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct r8152*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct r8152 *tp)
{
	u32 ocp_data;

	switch (tp->version) {
	case RTL_VER_01:
	case RTL_VER_02:
	case RTL_VER_03:
	case RTL_VER_04:
	case RTL_VER_05:
	case RTL_VER_06:
	case RTL_VER_07:
		ocp_data = FUNC0(tp, MCU_TYPE_PLA, PLA_TEREDO_CFG);
		ocp_data &= ~(TEREDO_SEL | TEREDO_RS_EVENT_MASK |
			      OOB_TEREDO_EN);
		FUNC3(tp, MCU_TYPE_PLA, PLA_TEREDO_CFG, ocp_data);
		break;

	case RTL_VER_08:
	case RTL_VER_09:
		/* The bit 0 ~ 7 are relative with teredo settings. They are
		 * W1C (write 1 to clear), so set all 1 to disable it.
		 */
		FUNC1(tp, MCU_TYPE_PLA, PLA_TEREDO_CFG, 0xff);
		break;

	default:
		break;
	}

	FUNC3(tp, MCU_TYPE_PLA, PLA_WDT6_CTRL, WDT6_SET_MODE);
	FUNC3(tp, MCU_TYPE_PLA, PLA_REALWOW_TIMER, 0);
	FUNC2(tp, MCU_TYPE_PLA, PLA_TEREDO_TIMER, 0);
}