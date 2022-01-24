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
struct s5k6aa {int streaming; int /*<<< orphan*/  sd; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_G_ENABLE_PREV ; 
 int /*<<< orphan*/  REG_G_ENABLE_PREV_CHG ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 struct i2c_client* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct s5k6aa *s5k6aa, int enable)
{
	struct i2c_client *client = FUNC1(&s5k6aa->sd);
	int ret = 0;

	ret = FUNC0(client, REG_G_ENABLE_PREV, enable);
	if (!ret)
		ret = FUNC0(client, REG_G_ENABLE_PREV_CHG, 1);
	if (!ret)
		s5k6aa->streaming = enable;

	return ret;
}