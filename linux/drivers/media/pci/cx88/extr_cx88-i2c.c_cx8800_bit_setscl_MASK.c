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
struct cx88_core {int i2c_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  MO_I2C ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(void *data, int state)
{
	struct cx88_core *core = data;

	if (state)
		core->i2c_state |= 0x02;
	else
		core->i2c_state &= ~0x02;
	FUNC1(MO_I2C, core->i2c_state);
	FUNC0(MO_I2C);
}