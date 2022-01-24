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
typedef  int uint8_t ;
struct ttusbir {int /*<<< orphan*/  rc; } ;
struct ir_raw_event {int pulse; int duration; } ;

/* Variables and functions */
 int NS_PER_BIT ; 
 void* NS_PER_BYTE ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct ir_raw_event*) ; 

__attribute__((used)) static void FUNC4(struct ttusbir *tt, uint8_t *buf)
{
	struct ir_raw_event rawir = {};
	unsigned i, v, b;
	bool event = false;

	for (i = 0; i < 128; i++) {
		v = buf[i] & 0xfe;
		switch (v) {
		case 0xfe:
			rawir.pulse = false;
			rawir.duration = NS_PER_BYTE;
			if (FUNC3(tt->rc, &rawir))
				event = true;
			break;
		case 0:
			rawir.pulse = true;
			rawir.duration = NS_PER_BYTE;
			if (FUNC3(tt->rc, &rawir))
				event = true;
			break;
		default:
			/* one edge per byte */
			if (v & 2) {
				b = FUNC1(v | 1);
				rawir.pulse = true;
			} else {
				b = FUNC0(v) - 1;
				rawir.pulse = false;
			}

			rawir.duration = NS_PER_BIT * (8 - b);
			if (FUNC3(tt->rc, &rawir))
				event = true;

			rawir.pulse = !rawir.pulse;
			rawir.duration = NS_PER_BIT * b;
			if (FUNC3(tt->rc, &rawir))
				event = true;
			break;
		}
	}

	/* don't wakeup when there's nothing to do */
	if (event)
		FUNC2(tt->rc);
}