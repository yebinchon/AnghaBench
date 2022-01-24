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
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int const,int) ; 
 int FUNC1 (struct i2c_client*,int const) ; 
 int FUNC2 (struct i2c_client*,int const) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client, const u16 reg)
{
	int ret;

	ret = FUNC2(client, reg);
	if (!ret)
		ret = FUNC1(client, reg & 0xff);

	FUNC0(&client->dev, "read  reg.%03x -> %04x\n", reg, ret);
	return ret;
}