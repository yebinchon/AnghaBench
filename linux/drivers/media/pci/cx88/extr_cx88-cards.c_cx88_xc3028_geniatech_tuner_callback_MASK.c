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
struct cx88_core {int /*<<< orphan*/  input; } ;
struct TYPE_2__ {int /*<<< orphan*/  type; } ;

/* Variables and functions */
#define  CX88_RADIO 130 
#define  CX88_VMUX_DVB 129 
 int EINVAL ; 
 TYPE_1__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MO_GP1_IO ; 
#define  XC2028_TUNER_RESET 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct cx88_core *core,
						int command, int mode)
{
	switch (command) {
	case XC2028_TUNER_RESET:
		switch (FUNC0(core->input).type) {
		case CX88_RADIO:
			break;
		case CX88_VMUX_DVB:
			FUNC1(MO_GP1_IO, 0x030302);
			FUNC2(50);
			break;
		default:
			FUNC1(MO_GP1_IO, 0x030301);
			FUNC2(50);
		}
		FUNC1(MO_GP1_IO, 0x101010);
		FUNC2(50);
		FUNC1(MO_GP1_IO, 0x101000);
		FUNC2(50);
		FUNC1(MO_GP1_IO, 0x101010);
		FUNC2(50);
		return 0;
	}
	return -EINVAL;
}