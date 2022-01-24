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
typedef  int u32 ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; struct i2c_client* client; } ;

/* Variables and functions */
 int GPIO3_DIR_INPUT ; 
 int GPIO_CTRL_SLPCTLEN ; 
 int /*<<< orphan*/  MENELAUS_GPIO_CTRL ; 
 int /*<<< orphan*/  MENELAUS_SLEEP_CTRL2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* the_menelaus ; 

int FUNC5(int enable, u32 val)
{
	int t, ret;
	struct i2c_client *c = the_menelaus->client;

	FUNC3(&the_menelaus->lock);
	ret = FUNC2(MENELAUS_SLEEP_CTRL2, val);
	if (ret < 0)
		goto out;

	FUNC0(&c->dev, "regulator sleep configuration: %02x\n", val);

	ret = FUNC1(MENELAUS_GPIO_CTRL);
	if (ret < 0)
		goto out;
	t = (GPIO_CTRL_SLPCTLEN | GPIO3_DIR_INPUT);
	if (enable)
		ret |= t;
	else
		ret &= ~t;
	ret = FUNC2(MENELAUS_GPIO_CTRL, ret);
out:
	FUNC4(&the_menelaus->lock);
	return ret;
}