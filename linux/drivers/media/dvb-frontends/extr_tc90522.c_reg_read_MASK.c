#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct tc90522_state {TYPE_1__* i2c_client; } ;
struct i2c_msg {int* buf; int len; int /*<<< orphan*/  flags; int /*<<< orphan*/  addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  adapter; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int FUNC0 (struct i2c_msg*) ; 
 int EIO ; 
 int /*<<< orphan*/  I2C_M_RD ; 
 int FUNC1 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 

__attribute__((used)) static int FUNC2(struct tc90522_state *state, u8 reg, u8 *val, u8 len)
{
	struct i2c_msg msgs[2] = {
		{
			.addr = state->i2c_client->addr,
			.flags = 0,
			.buf = &reg,
			.len = 1,
		},
		{
			.addr = state->i2c_client->addr,
			.flags = I2C_M_RD,
			.buf = val,
			.len = len,
		},
	};
	int ret;

	ret = FUNC1(state->i2c_client->adapter, msgs, FUNC0(msgs));
	if (ret == FUNC0(msgs))
		ret = 0;
	else if (ret >= 0)
		ret = -EIO;
	return ret;
}