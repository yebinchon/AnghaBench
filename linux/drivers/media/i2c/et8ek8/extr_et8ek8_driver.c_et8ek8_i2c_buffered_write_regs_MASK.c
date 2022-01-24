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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct i2c_msg {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  adapter; } ;
struct et8ek8_reg {int /*<<< orphan*/  val; int /*<<< orphan*/  reg; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int ET8EK8_MAX_MSG ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct i2c_msg*,unsigned char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 

__attribute__((used)) static int FUNC2(struct i2c_client *client,
					  const struct et8ek8_reg *wnext,
					  int cnt)
{
	struct i2c_msg msg[ET8EK8_MAX_MSG];
	unsigned char data[ET8EK8_MAX_MSG][6];
	int wcnt = 0;
	u16 reg, data_length;
	u32 val;
	int rval;

	/* Create new write messages for all writes */
	while (wcnt < cnt) {
		data_length = wnext->type;
		reg = wnext->reg;
		val = wnext->val;
		wnext++;

		FUNC0(client, data_length, reg,
				    val, &msg[wcnt], &data[wcnt][0]);

		/* Update write count */
		wcnt++;

		if (wcnt < ET8EK8_MAX_MSG)
			continue;

		rval = FUNC1(client->adapter, msg, wcnt);
		if (rval < 0)
			return rval;

		cnt -= wcnt;
		wcnt = 0;
	}

	rval = FUNC1(client->adapter, msg, wcnt);

	return rval < 0 ? rval : 0;
}