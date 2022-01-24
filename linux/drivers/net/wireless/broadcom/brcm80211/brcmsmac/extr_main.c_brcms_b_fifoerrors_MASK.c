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
typedef  size_t uint ;
struct brcms_hardware {size_t unit; TYPE_1__* wlc; struct bcma_device* d11core; } ;
struct bcma_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  intstatus; } ;
struct TYPE_3__ {int /*<<< orphan*/  wl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t I_DE ; 
 size_t I_ERRORS ; 
 size_t I_PC ; 
 size_t I_PD ; 
 size_t I_RO ; 
 size_t I_RU ; 
 size_t I_XU ; 
 size_t NFIFO ; 
 size_t FUNC1 (struct bcma_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bcma_device*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct bcma_device*,char*,size_t,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct bcma_device*,char*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_2__* intctrlregs ; 

__attribute__((used)) static void FUNC6(struct brcms_hardware *wlc_hw)
{
	bool fatal = false;
	uint unit;
	uint intstatus, idx;
	struct bcma_device *core = wlc_hw->d11core;

	unit = wlc_hw->unit;

	for (idx = 0; idx < NFIFO; idx++) {
		/* read intstatus register and ignore any non-error bits */
		intstatus =
			FUNC1(core,
				    FUNC0(intctrlregs[idx].intstatus)) &
			I_ERRORS;
		if (!intstatus)
			continue;

		FUNC3(core, "wl%d: intstatus%d 0x%x\n",
			      unit, idx, intstatus);

		if (intstatus & I_RO) {
			FUNC4(core, "wl%d: fifo %d: receive fifo "
				  "overflow\n", unit, idx);
			fatal = true;
		}

		if (intstatus & I_PC) {
			FUNC4(core, "wl%d: fifo %d: descriptor error\n",
				  unit, idx);
			fatal = true;
		}

		if (intstatus & I_PD) {
			FUNC4(core, "wl%d: fifo %d: data error\n", unit,
				  idx);
			fatal = true;
		}

		if (intstatus & I_DE) {
			FUNC4(core, "wl%d: fifo %d: descriptor protocol "
				  "error\n", unit, idx);
			fatal = true;
		}

		if (intstatus & I_RU)
			FUNC4(core, "wl%d: fifo %d: receive descriptor "
				  "underflow\n", idx, unit);

		if (intstatus & I_XU) {
			FUNC4(core, "wl%d: fifo %d: transmit fifo "
				  "underflow\n", idx, unit);
			fatal = true;
		}

		if (fatal) {
			FUNC5(wlc_hw->wlc->wl); /* big hammer */
			break;
		} else
			FUNC2(core,
				     FUNC0(intctrlregs[idx].intstatus),
				     intstatus);
	}
}