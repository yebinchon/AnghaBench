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
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CX25840_IR_CDUTY_REG ; 
 unsigned int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static unsigned int FUNC2(struct i2c_client *c,
					  unsigned int duty_cycle)
{
	u32 n;
	n = FUNC0(duty_cycle * 100, 625); /* 16ths of 100% */
	if (n != 0)
		n--;
	if (n > 15)
		n = 15;
	FUNC1(c, CX25840_IR_CDUTY_REG, n);
	return FUNC0((n + 1) * 100, 16);
}