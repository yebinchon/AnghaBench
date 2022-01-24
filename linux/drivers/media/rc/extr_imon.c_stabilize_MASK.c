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
typedef  scalar_t__ u16 ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 long FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(int a, int b, u16 timeout, u16 threshold)
{
	ktime_t ct;
	static ktime_t prev_time;
	static ktime_t hit_time;
	static int x, y, prev_result, hits;
	int result = 0;
	long msec, msec_hit;

	ct = FUNC1();
	msec = FUNC2(ct, prev_time);
	msec_hit = FUNC2(ct, hit_time);

	if (msec > 100) {
		x = 0;
		y = 0;
		hits = 0;
	}

	x += a;
	y += b;

	prev_time = ct;

	if (FUNC0(x) > threshold || FUNC0(y) > threshold) {
		if (FUNC0(y) > FUNC0(x))
			result = (y > 0) ? 0x7F : 0x80;
		else
			result = (x > 0) ? 0x7F00 : 0x8000;

		x = 0;
		y = 0;

		if (result == prev_result) {
			hits++;

			if (hits > 3) {
				switch (result) {
				case 0x7F:
					y = 17 * threshold / 30;
					break;
				case 0x80:
					y -= 17 * threshold / 30;
					break;
				case 0x7F00:
					x = 17 * threshold / 30;
					break;
				case 0x8000:
					x -= 17 * threshold / 30;
					break;
				}
			}

			if (hits == 2 && msec_hit < timeout) {
				result = 0;
				hits = 1;
			}
		} else {
			prev_result = result;
			hits = 1;
			hit_time = ct;
		}
	}

	return result;
}