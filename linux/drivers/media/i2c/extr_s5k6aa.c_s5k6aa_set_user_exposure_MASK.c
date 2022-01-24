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
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_SF_USR_EXPOSURE_CHG ; 
 int /*<<< orphan*/  REG_SF_USR_EXPOSURE_H ; 
 int /*<<< orphan*/  REG_SF_USR_EXPOSURE_L ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(struct i2c_client *client, int exposure)
{
	unsigned int time = exposure / 10;

	int ret = FUNC0(client, REG_SF_USR_EXPOSURE_L, time & 0xffff);
	if (!ret)
		ret = FUNC0(client, REG_SF_USR_EXPOSURE_H, time >> 16);
	if (ret)
		return ret;
	return FUNC0(client, REG_SF_USR_EXPOSURE_CHG, 1);
}