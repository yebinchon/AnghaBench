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
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int addr; int /*<<< orphan*/  adapter; } ;
struct adv76xx_platform_data {scalar_t__* i2c_addresses; } ;
struct adv76xx_state {struct adv76xx_platform_data pdata; } ;
struct TYPE_2__ {int /*<<< orphan*/  default_addr; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i2c_client*) ; 
 TYPE_1__* adv76xx_default_addresses ; 
 struct i2c_client* FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct v4l2_subdev*,unsigned int,int) ; 
 struct adv76xx_state* FUNC4 (struct v4l2_subdev*) ; 
 struct i2c_client* FUNC5 (struct v4l2_subdev*) ; 

__attribute__((used)) static struct i2c_client *FUNC6(struct v4l2_subdev *sd,
					       unsigned int page)
{
	struct i2c_client *client = FUNC5(sd);
	struct adv76xx_state *state = FUNC4(sd);
	struct adv76xx_platform_data *pdata = &state->pdata;
	unsigned int io_reg = 0xf2 + page;
	struct i2c_client *new_client;

	if (pdata && pdata->i2c_addresses[page])
		new_client = FUNC2(client->adapter,
					   pdata->i2c_addresses[page]);
	else
		new_client = FUNC1(client,
				adv76xx_default_addresses[page].name,
				adv76xx_default_addresses[page].default_addr);

	if (!FUNC0(new_client))
		FUNC3(sd, io_reg, new_client->addr << 1);

	return new_client;
}