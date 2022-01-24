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
struct tda10086_state {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct tda10086_state*,int) ; 
 int FUNC1 (struct tda10086_state*,int,int) ; 

__attribute__((used)) static int FUNC2(struct tda10086_state *state, int reg, int mask, int data)
{
	int val;

	/* read a byte and check */
	val = FUNC0(state, reg);
	if (val < 0)
		return val;

	/* mask if off */
	val = val & ~mask;
	val |= data & 0xff;

	/* write it out again */
	return FUNC1(state, reg, val);
}