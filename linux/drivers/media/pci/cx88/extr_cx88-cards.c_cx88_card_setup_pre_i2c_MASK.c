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
struct TYPE_4__ {TYPE_1__* input; } ;
struct cx88_core {int boardnr; TYPE_2__ board; } ;
struct TYPE_3__ {int gpio0; } ;

/* Variables and functions */
#define  CX88_BOARD_DVICO_FUSIONHDTV_7_GOLD 141 
#define  CX88_BOARD_HAUPPAUGE_HVR1300 140 
#define  CX88_BOARD_HAUPPAUGE_HVR3000 139 
#define  CX88_BOARD_HAUPPAUGE_HVR4000 138 
#define  CX88_BOARD_PROLINK_PV_8000GT 137 
#define  CX88_BOARD_PROLINK_PV_GLOBAL_XTREME 136 
#define  CX88_BOARD_TWINHAN_VP1027_DVBS 135 
#define  CX88_BOARD_WINFAST_DTV1800H 134 
#define  CX88_BOARD_WINFAST_DTV1800H_XC4000 133 
#define  CX88_BOARD_WINFAST_DTV2000H_J 132 
#define  CX88_BOARD_WINFAST_DTV2000H_PLUS 131 
#define  CX88_BOARD_WINFAST_TV2000_XP_GLOBAL 130 
#define  CX88_BOARD_WINFAST_TV2000_XP_GLOBAL_6F36 129 
#define  CX88_BOARD_WINFAST_TV2000_XP_GLOBAL_6F43 128 
 int /*<<< orphan*/  MO_GP0_IO ; 
 int /*<<< orphan*/  MO_GP2_IO ; 
 int /*<<< orphan*/  XC2028_TUNER_RESET ; 
 int /*<<< orphan*/  XC4000_TUNER_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct cx88_core*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cx88_core*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

__attribute__((used)) static void FUNC8(struct cx88_core *core)
{
	switch (core->boardnr) {
	case CX88_BOARD_HAUPPAUGE_HVR1300:
		/*
		 * Bring the 702 demod up before i2c scanning/attach or
		 * devices are hidden.
		 *
		 * We leave here with the 702 on the bus
		 *
		 * "reset the IR receiver on GPIO[3]"
		 * Reported by Mike Crash <mike AT mikecrash.com>
		 */
		FUNC4(MO_GP0_IO, 0x0000ef88);
		FUNC6(1000);
		FUNC2(MO_GP0_IO, 0x00000088);
		FUNC6(50);
		FUNC3(MO_GP0_IO, 0x00000088); /* 702 out of reset */
		FUNC6(1000);
		break;

	case CX88_BOARD_PROLINK_PV_GLOBAL_XTREME:
	case CX88_BOARD_PROLINK_PV_8000GT:
		FUNC4(MO_GP2_IO, 0xcf7);
		FUNC5(50);
		FUNC4(MO_GP2_IO, 0xef5);
		FUNC5(50);
		FUNC4(MO_GP2_IO, 0xcf7);
		FUNC7(10000, 20000);
		break;

	case CX88_BOARD_DVICO_FUSIONHDTV_7_GOLD:
		/* Enable the xc5000 tuner */
		FUNC3(MO_GP0_IO, 0x00001010);
		break;

	case CX88_BOARD_WINFAST_DTV2000H_J:
	case CX88_BOARD_HAUPPAUGE_HVR3000:
	case CX88_BOARD_HAUPPAUGE_HVR4000:
		/* Init GPIO */
		FUNC4(MO_GP0_IO, core->board.input[0].gpio0);
		FUNC6(1000);
		FUNC2(MO_GP0_IO, 0x00000080);
		FUNC6(50);
		FUNC3(MO_GP0_IO, 0x00000080); /* 702 out of reset */
		FUNC6(1000);
		break;

	case CX88_BOARD_WINFAST_TV2000_XP_GLOBAL:
	case CX88_BOARD_WINFAST_DTV1800H:
		FUNC0(core, XC2028_TUNER_RESET, 0);
		break;

	case CX88_BOARD_WINFAST_DTV1800H_XC4000:
	case CX88_BOARD_WINFAST_DTV2000H_PLUS:
	case CX88_BOARD_WINFAST_TV2000_XP_GLOBAL_6F36:
	case CX88_BOARD_WINFAST_TV2000_XP_GLOBAL_6F43:
		FUNC1(core,
						       XC4000_TUNER_RESET, 0);
		break;

	case CX88_BOARD_TWINHAN_VP1027_DVBS:
		FUNC4(MO_GP0_IO, 0x00003230);
		FUNC4(MO_GP0_IO, 0x00003210);
		FUNC7(10000, 20000);
		FUNC4(MO_GP0_IO, 0x00001230);
		break;
	}
}