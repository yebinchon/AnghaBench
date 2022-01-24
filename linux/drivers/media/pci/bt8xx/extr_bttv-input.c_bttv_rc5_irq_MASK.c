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
struct bttv_ir {int active; int last_bit; int code; int /*<<< orphan*/  timer; int /*<<< orphan*/  base_time; } ;
struct bttv {int /*<<< orphan*/  c; struct bttv_ir* remote; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int USEC_PER_SEC ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*) ; 
 int ir_rc5_remote_gap ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct bttv *btv)
{
	struct bttv_ir *ir = btv->remote;
	ktime_t tv;
	u32 gpio;
	u32 gap;
	unsigned long current_jiffies;

	/* read gpio port */
	gpio = FUNC0(&btv->c);

	/* get time of bit */
	current_jiffies = jiffies;
	tv = FUNC3();

	gap = FUNC5(FUNC4(tv, ir->base_time));
	/* avoid overflow with gap >1s */
	if (gap > USEC_PER_SEC) {
		gap = 200000;
	}

	FUNC2("RC5 IRQ: gap %d us for %s\n",
		gap, (gpio & 0x20) ? "mark" : "space");

	/* remote IRQ? */
	if (!(gpio & 0x20))
		return 0;

	/* active code => add bit */
	if (ir->active) {
		/* only if in the code (otherwise spurious IRQ or timer
		   late) */
		if (ir->last_bit < 28) {
			ir->last_bit = (gap - ir_rc5_remote_gap / 2) /
			    ir_rc5_remote_gap;
			ir->code |= 1 << ir->last_bit;
		}
		/* starting new code */
	} else {
		ir->active = true;
		ir->code = 0;
		ir->base_time = tv;
		ir->last_bit = 0;

		FUNC6(&ir->timer, current_jiffies + FUNC7(30));
	}

	/* toggle GPIO pin 4 to reset the irq */
	FUNC1(&btv->c, gpio & ~(1 << 4));
	FUNC1(&btv->c, gpio | (1 << 4));
	return 1;
}