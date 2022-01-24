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
struct streamzap_ir {int idle; scalar_t__ sum; int /*<<< orphan*/  signal_last; int /*<<< orphan*/  signal_start; } ;
struct ir_raw_event {int pulse; int duration; } ;

/* Variables and functions */
 void* IR_MAX_DURATION ; 
 int SZ_RESOLUTION ; 
 int USEC_PER_SEC ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct streamzap_ir*,struct ir_raw_event) ; 

__attribute__((used)) static void FUNC4(struct streamzap_ir *sz,
			       unsigned char value)
{
	struct ir_raw_event rawir = {};

	if (sz->idle) {
		int delta;

		sz->signal_last = sz->signal_start;
		sz->signal_start = FUNC1();

		delta = FUNC2(sz->signal_start, sz->signal_last);
		rawir.pulse = false;
		if (delta > (15 * USEC_PER_SEC)) {
			/* really long time */
			rawir.duration = IR_MAX_DURATION;
		} else {
			rawir.duration = delta;
			rawir.duration -= sz->sum;
			rawir.duration = FUNC0(rawir.duration);
			rawir.duration = (rawir.duration > IR_MAX_DURATION) ?
					 IR_MAX_DURATION : rawir.duration;
		}
		FUNC3(sz, rawir);

		sz->idle = false;
		sz->sum = 0;
	}

	rawir.pulse = true;
	rawir.duration = ((int) value) * SZ_RESOLUTION;
	rawir.duration += SZ_RESOLUTION / 2;
	sz->sum += rawir.duration;
	rawir.duration = FUNC0(rawir.duration);
	rawir.duration = (rawir.duration > IR_MAX_DURATION) ?
			 IR_MAX_DURATION : rawir.duration;
	FUNC3(sz, rawir);
}