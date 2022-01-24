#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ir_raw_event {int duration; unsigned int pulse; } ;
struct igorplugusb {unsigned int* buf_in; TYPE_1__* rc; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int timeout; } ;

/* Variables and functions */
 unsigned int HEADERLEN ; 
 int /*<<< orphan*/  SET_INFRABUFFER_EMPTY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int,unsigned int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct igorplugusb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct ir_raw_event*) ; 

__attribute__((used)) static void FUNC6(struct igorplugusb *ir, unsigned len)
{
	struct ir_raw_event rawir = {};
	unsigned i, start, overflow;

	FUNC0(ir->dev, "irdata: %*ph (len=%u)", len, ir->buf_in, len);

	/*
	 * If more than 36 pulses and spaces follow each other, the igorplugusb
	 * overwrites its buffer from the beginning. The overflow value is the
	 * last offset which was not overwritten. Everything from this offset
	 * onwards occurred before everything until this offset.
	 */
	overflow = ir->buf_in[2];
	i = start = overflow + HEADERLEN;

	if (start >= len) {
		FUNC1(ir->dev, "receive overflow invalid: %u", overflow);
	} else {
		if (overflow > 0)
			FUNC2(ir->dev, "receive overflow, at least %u lost",
								overflow);

		do {
			rawir.duration = ir->buf_in[i] * 85333;
			rawir.pulse = i & 1;

			FUNC5(ir->rc, &rawir);

			if (++i == len)
				i = HEADERLEN;
		} while (i != start);

		/* add a trailing space */
		rawir.duration = ir->rc->timeout;
		rawir.pulse = false;
		FUNC5(ir->rc, &rawir);

		FUNC4(ir->rc);
	}

	FUNC3(ir, SET_INFRABUFFER_EMPTY);
}