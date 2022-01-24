#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct mux_control {TYPE_2__* chip; } ;
struct i2c_client {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct TYPE_4__ {int controllers; TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  ADG792A_DISABLE_ALL ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int MUX_IDLE_DISCONNECT ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (struct mux_control*) ; 
 struct i2c_client* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct mux_control *mux, int state)
{
	struct i2c_client *i2c = FUNC5(mux->chip->dev.parent);
	u8 cmd;

	if (mux->chip->controllers == 1) {
		/* parallel mux controller operation */
		if (state == MUX_IDLE_DISCONNECT)
			cmd = ADG792A_DISABLE_ALL;
		else
			cmd = FUNC2(state);
	} else {
		unsigned int controller = FUNC4(mux);

		if (state == MUX_IDLE_DISCONNECT)
			cmd = FUNC0(controller);
		else
			cmd = FUNC1(controller, state);
	}

	return FUNC3(i2c, cmd, 0);
}