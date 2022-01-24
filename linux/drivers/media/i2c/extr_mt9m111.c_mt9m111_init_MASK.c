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
struct mt9m111 {int /*<<< orphan*/  ctx; int /*<<< orphan*/  subdev; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct mt9m111*) ; 
 int FUNC2 (struct mt9m111*) ; 
 int FUNC3 (struct mt9m111*,int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct mt9m111 *mt9m111)
{
	struct i2c_client *client = FUNC4(&mt9m111->subdev);
	int ret;

	ret = FUNC1(mt9m111);
	if (!ret)
		ret = FUNC2(mt9m111);
	if (!ret)
		ret = FUNC3(mt9m111, mt9m111->ctx);
	if (ret)
		FUNC0(&client->dev, "mt9m111 init failed: %d\n", ret);
	return ret;
}