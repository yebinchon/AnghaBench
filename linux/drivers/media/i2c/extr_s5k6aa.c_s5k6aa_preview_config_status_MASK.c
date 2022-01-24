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
typedef  scalar_t__ u16 ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  REG_G_PREV_CFG_ERROR ; 
 int /*<<< orphan*/  debug ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,struct i2c_client*,char*,scalar_t__,int) ; 

__attribute__((used)) static int FUNC2(struct i2c_client *client)
{
	u16 error = 0;
	int ret = FUNC0(client, REG_G_PREV_CFG_ERROR, &error);

	FUNC1(1, debug, client, "error: 0x%x (%d)\n", error, ret);
	return ret ? ret : (error ? -EINVAL : 0);
}