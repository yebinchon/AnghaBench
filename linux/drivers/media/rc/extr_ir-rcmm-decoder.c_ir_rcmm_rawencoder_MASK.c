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
struct ir_raw_event {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RCMM_PREFIX_PULSE ; 
 int RCMM_PULSE_0 ; 
 int RCMM_PULSE_3 ; 
 int /*<<< orphan*/  RCMM_UNIT ; 
 int FUNC0 (struct ir_raw_event**,unsigned int*,int /*<<< orphan*/ ,unsigned int const) ; 
 unsigned int* rcmmspace ; 

__attribute__((used)) static int FUNC1(struct ir_raw_event **ev, unsigned int max,
			      unsigned int n, u32 data)
{
	int i;
	int ret;

	ret = FUNC0(ev, &max, RCMM_PREFIX_PULSE, RCMM_PULSE_0);
	if (ret)
		return ret;

	for (i = n - 2; i >= 0; i -= 2) {
		const unsigned int space = rcmmspace[(data >> i) & 3];

		ret = FUNC0(ev, &max, RCMM_UNIT, space);
		if (ret)
			return ret;
	}

	return FUNC0(ev, &max, RCMM_UNIT, RCMM_PULSE_3 * 2);
}