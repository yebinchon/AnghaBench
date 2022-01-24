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
struct pt3_board {scalar_t__* regs; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ REG_I2C_R ; 
 int STAT_SEQ_RUNNING ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static int FUNC2(struct pt3_board *pt3, u32 *result, int max_wait)
{
	int i;
	u32 v;

	for (i = 0; i < max_wait; i++) {
		v = FUNC0(pt3->regs[0] + REG_I2C_R);
		if (!(v & STAT_SEQ_RUNNING))
			break;
		FUNC1(500, 750);
	}
	if (i >= max_wait)
		return -EIO;
	if (result)
		*result = v;
	return 0;
}