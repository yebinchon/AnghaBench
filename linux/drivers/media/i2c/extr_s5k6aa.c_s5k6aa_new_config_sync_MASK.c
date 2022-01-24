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
typedef  int u16 ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  REG_G_ACTIVE_PREV_CFG ; 
 int /*<<< orphan*/  REG_G_NEW_CFG_SYNC ; 
 int /*<<< orphan*/  REG_G_PREV_CFG_CHG ; 
 unsigned long jiffies ; 
 unsigned long FUNC0 (int) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client, int timeout,
				  int cid)
{
	unsigned long end = jiffies + FUNC0(timeout);
	u16 reg = 1;
	int ret;

	ret = FUNC2(client, REG_G_ACTIVE_PREV_CFG, cid);
	if (!ret)
		ret = FUNC2(client, REG_G_PREV_CFG_CHG, 1);
	if (!ret)
		ret = FUNC2(client, REG_G_NEW_CFG_SYNC, 1);
	if (timeout == 0)
		return ret;

	while (ret >= 0 && FUNC3(end)) {
		ret = FUNC1(client, REG_G_NEW_CFG_SYNC, &reg);
		if (!reg)
			return 0;
		FUNC4(1000, 5000);
	}
	return ret ? ret : -ETIMEDOUT;
}