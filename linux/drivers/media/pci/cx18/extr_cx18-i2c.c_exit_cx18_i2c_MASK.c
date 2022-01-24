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
struct cx18 {int /*<<< orphan*/ * i2c_adap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  CX18_REG_I2C_1_WR ; 
 int /*<<< orphan*/  CX18_REG_I2C_2_WR ; 
 int FUNC1 (struct cx18*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cx18*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct cx18 *cx)
{
	int i;
	FUNC0("i2c exit\n");
	FUNC2(cx, FUNC1(cx, CX18_REG_I2C_1_WR) | 4,
							CX18_REG_I2C_1_WR);
	FUNC2(cx, FUNC1(cx, CX18_REG_I2C_2_WR) | 4,
							CX18_REG_I2C_2_WR);

	for (i = 0; i < 2; i++) {
		FUNC3(&cx->i2c_adap[i]);
	}
}