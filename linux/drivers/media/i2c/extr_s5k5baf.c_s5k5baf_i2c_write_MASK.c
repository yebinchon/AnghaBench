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
typedef  int u8 ;
typedef  int u16 ;
struct s5k5baf {int error; int /*<<< orphan*/  sd; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  debug ; 
 int FUNC0 (struct i2c_client*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,struct i2c_client*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,char*,int) ; 
 struct i2c_client* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct s5k5baf *state, u16 addr, u16 val)
{
	u8 buf[4] = { addr >> 8, addr & 0xFF, val >> 8, val & 0xFF };
	struct i2c_client *c = FUNC3(&state->sd);
	int ret;

	if (state->error)
		return;

	ret = FUNC0(c, buf, 4);
	FUNC1(3, debug, c, "i2c_write: 0x%04x : 0x%04x\n", addr, val);

	if (ret != 4) {
		FUNC2(c, "i2c_write: error during transfer (%d)\n", ret);
		state->error = ret;
	}
}