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
typedef  scalar_t__ u16 ;
struct s5c73m3 {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int FUNC0 (struct s5c73m3*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct s5c73m3 *state, u32 value,
				      unsigned int delay, unsigned int steps)
{
	u16 reg = 0;

	while (steps-- > 0) {
		int ret = FUNC0(state, 0x30100010, &reg);
		if (ret < 0)
			return ret;
		if (reg == value)
			return 0;
		FUNC1(delay, delay + 25);
	}
	return -ETIMEDOUT;
}