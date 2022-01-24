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
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct b43legacy_wldev {int dummy; } ;
struct b43legacy_lopair {int high; int low; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43legacy_wldev*,struct b43legacy_lopair*) ; 
 scalar_t__ FUNC3 (struct b43legacy_wldev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
void FUNC4(struct b43legacy_wldev *dev,
			      const struct b43legacy_lopair *in_pair,
			      struct b43legacy_lopair *out_pair,
			      u16 r27)
{
	static const struct b43legacy_lopair transitions[8] = {
		{ .high =  1,  .low =  1, },
		{ .high =  1,  .low =  0, },
		{ .high =  1,  .low = -1, },
		{ .high =  0,  .low = -1, },
		{ .high = -1,  .low = -1, },
		{ .high = -1,  .low =  0, },
		{ .high = -1,  .low =  1, },
		{ .high =  0,  .low =  1, },
	};
	struct b43legacy_lopair lowest_transition = {
		.high = in_pair->high,
		.low = in_pair->low,
	};
	struct b43legacy_lopair tmp_pair;
	struct b43legacy_lopair transition;
	int i = 12;
	int state = 0;
	int found_lower;
	int j;
	int begin;
	int end;
	u32 lowest_deviation;
	u32 tmp;

	/* Note that in_pair and out_pair can point to the same pair.
	 * Be careful. */

	FUNC2(dev, &lowest_transition);
	lowest_deviation = FUNC3(dev, r27);
	do {
		found_lower = 0;
		FUNC0(!(state >= 0 && state <= 8));
		if (state == 0) {
			begin = 1;
			end = 8;
		} else if (state % 2 == 0) {
			begin = state - 1;
			end = state + 1;
		} else {
			begin = state - 2;
			end = state + 2;
		}
		if (begin < 1)
			begin += 8;
		if (end > 8)
			end -= 8;

		j = begin;
		tmp_pair.high = lowest_transition.high;
		tmp_pair.low = lowest_transition.low;
		while (1) {
			FUNC0(!(j >= 1 && j <= 8));
			transition.high = tmp_pair.high +
					  transitions[j - 1].high;
			transition.low = tmp_pair.low + transitions[j - 1].low;
			if ((FUNC1(transition.low) < 9)
			     && (FUNC1(transition.high) < 9)) {
				FUNC2(dev, &transition);
				tmp = FUNC3(dev,
								       r27);
				if (tmp < lowest_deviation) {
					lowest_deviation = tmp;
					state = j;
					found_lower = 1;

					lowest_transition.high =
								transition.high;
					lowest_transition.low = transition.low;
				}
			}
			if (j == end)
				break;
			if (j == 8)
				j = 1;
			else
				j++;
		}
	} while (i-- && found_lower);

	out_pair->high = lowest_transition.high;
	out_pair->low = lowest_transition.low;
}