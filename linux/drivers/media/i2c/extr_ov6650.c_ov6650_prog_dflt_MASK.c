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
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMB_BAND_FILTER ; 
 int /*<<< orphan*/  REG_COMA ; 
 int /*<<< orphan*/  REG_COMB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client)
{
	int ret;

	FUNC0(&client->dev, "initializing\n");

	ret = FUNC2(client, REG_COMA, 0);	/* ~COMA_RESET */
	if (!ret)
		ret = FUNC1(client, REG_COMB, 0, COMB_BAND_FILTER);

	return ret;
}