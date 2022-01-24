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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct s5k5baf {int error; int /*<<< orphan*/  sd; } ;
struct i2c_msg {int len; int /*<<< orphan*/ * buf; int /*<<< orphan*/  flags; int /*<<< orphan*/  addr; } ;
struct i2c_client {int /*<<< orphan*/  adapter; int /*<<< orphan*/  addr; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  I2C_M_RD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  debug ; 
 int FUNC2 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,struct i2c_client*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,char*,int) ; 
 struct i2c_client* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static u16 FUNC6(struct s5k5baf *state, u16 addr)
{
	struct i2c_client *c = FUNC5(&state->sd);
	__be16 w, r;
	u16 res;
	struct i2c_msg msg[] = {
		{ .addr = c->addr, .flags = 0,
		  .len = 2, .buf = (u8 *)&w },
		{ .addr = c->addr, .flags = I2C_M_RD,
		  .len = 2, .buf = (u8 *)&r },
	};
	int ret;

	if (state->error)
		return 0;

	w = FUNC1(addr);
	ret = FUNC2(c->adapter, msg, 2);
	res = FUNC0(r);

	FUNC3(3, debug, c, "i2c_read: 0x%04x : 0x%04x\n", addr, res);

	if (ret != 2) {
		FUNC4(c, "i2c_read: error during transfer (%d)\n", ret);
		state->error = ret;
	}
	return res;
}