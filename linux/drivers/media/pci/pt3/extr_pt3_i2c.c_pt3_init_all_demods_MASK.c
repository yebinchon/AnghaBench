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
struct pt3_board {scalar_t__* regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  PT3_CMD_ADDR_INIT_DEMOD ; 
 scalar_t__ REG_I2C_R ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (struct pt3_board*,int /*<<< orphan*/ ) ; 

int  FUNC2(struct pt3_board *pt3)
{
	FUNC0(pt3->regs[0] + REG_I2C_R);
	return FUNC1(pt3, PT3_CMD_ADDR_INIT_DEMOD);
}