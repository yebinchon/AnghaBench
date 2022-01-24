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
typedef  int u32 ;
struct timer_list {int dummy; } ;
struct bttv_ir {int active; int last_bit; int code; int shift_by; int /*<<< orphan*/  dev; int /*<<< orphan*/  base_time; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  RC_PROTO_RC5 ; 
 int FUNC4 (int,int) ; 
 int USEC_PER_SEC ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 struct bttv_ir* FUNC7 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct bttv_ir* ir ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void FUNC12(struct timer_list *t)
{
	struct bttv_ir *ir = FUNC7(ir, t, timer);
	ktime_t tv;
	u32 gap, rc5, scancode;
	u8 toggle, command, system;

	/* get time */
	tv = FUNC8();

	gap = FUNC10(FUNC9(tv, ir->base_time));
	/* avoid overflow with gap >1s */
	if (gap > USEC_PER_SEC) {
		gap = 200000;
	}
	/* signal we're ready to start a new code */
	ir->active = false;

	/* Allow some timer jitter (RC5 is ~24ms anyway so this is ok) */
	if (gap < 28000) {
		FUNC6("spurious timer_end\n");
		return;
	}

	if (ir->last_bit < 20) {
		/* ignore spurious codes (caused by light/other remotes) */
		FUNC6("short code: %x\n", ir->code);
		return;
	}

	ir->code = (ir->code << ir->shift_by) | 1;
	rc5 = FUNC5(ir->code);

	toggle = FUNC3(rc5);
	system = FUNC0(rc5);
	command = FUNC1(rc5);

	switch (FUNC2(rc5)) {
	case 0x3:
		break;
	case 0x2:
		command += 0x40;
		break;
	default:
		return;
	}

	scancode = FUNC4(system, command);
	FUNC11(ir->dev, RC_PROTO_RC5, scancode, toggle);
	FUNC6("scancode %x, toggle %x\n", scancode, toggle);
}