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
struct i2c_client {int /*<<< orphan*/  addr; } ;
struct adv748x_state {int /*<<< orphan*/ * regmap; struct i2c_client** i2c_clients; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adv748x_state*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int FUNC2(struct adv748x_state *state,
			      int client_page, u8 reg)
{
	struct i2c_client *client = state->i2c_clients[client_page];
	int err;
	unsigned int val;

	err = FUNC1(state->regmap[client_page], reg, &val);

	if (err) {
		FUNC0(state, "error reading %02x, %02x\n",
				client->addr, reg);
		return err;
	}

	return val;
}