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
struct cx88_core {int /*<<< orphan*/  boardnr; } ;

/* Variables and functions */
#define  CX88_BOARD_DVICO_FUSIONHDTV_5_PCI_NANO 129 
 int EINVAL ; 
 int /*<<< orphan*/  MO_GP0_IO ; 
#define  XC2028_TUNER_RESET 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct cx88_core *core,
				      int command, int arg)
{
	switch (command) {
	case XC2028_TUNER_RESET:
		switch (core->boardnr) {
		case CX88_BOARD_DVICO_FUSIONHDTV_5_PCI_NANO:
			/* GPIO-4 xc3028 tuner */

			FUNC1(MO_GP0_IO, 0x00001000);
			FUNC0(MO_GP0_IO, 0x00000010);
			FUNC4(100);
			FUNC1(MO_GP0_IO, 0x00000010);
			FUNC4(100);
			break;
		default:
			FUNC2(MO_GP0_IO, 0x101000);
			FUNC3(5);
			FUNC1(MO_GP0_IO, 0x101010);
		}
		break;
	default:
		return -EINVAL;
	}

	return 0;
}