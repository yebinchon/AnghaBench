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
struct regmap {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct at24_data {scalar_t__ offset_adj; } ;
struct at24_client {struct i2c_client* client; struct regmap* regmap; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t ETIMEDOUT ; 
 size_t FUNC0 (struct at24_data*,unsigned int,size_t) ; 
 struct at24_client* FUNC1 (struct at24_data*,unsigned int*) ; 
 int /*<<< orphan*/  at24_write_timeout ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,size_t,unsigned int,int,unsigned long) ; 
 unsigned long jiffies ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct regmap*,unsigned int,char*,size_t) ; 
 scalar_t__ FUNC5 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static ssize_t FUNC7(struct at24_data *at24, char *buf,
				unsigned int offset, size_t count)
{
	unsigned long timeout, read_time;
	struct at24_client *at24_client;
	struct i2c_client *client;
	struct regmap *regmap;
	int ret;

	at24_client = FUNC1(at24, &offset);
	regmap = at24_client->regmap;
	client = at24_client->client;
	count = FUNC0(at24, offset, count);

	/* adjust offset for mac and serial read ops */
	offset += at24->offset_adj;

	timeout = jiffies + FUNC3(at24_write_timeout);
	do {
		/*
		 * The timestamp shall be taken before the actual operation
		 * to avoid a premature timeout in case of high CPU load.
		 */
		read_time = jiffies;

		ret = FUNC4(regmap, offset, buf, count);
		FUNC2(&client->dev, "read %zu@%d --> %d (%ld)\n",
			count, offset, ret, jiffies);
		if (!ret)
			return count;

		FUNC6(1000, 1500);
	} while (FUNC5(read_time, timeout));

	return -ETIMEDOUT;
}