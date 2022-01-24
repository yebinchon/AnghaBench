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
struct mt9p031 {int /*<<< orphan*/  ctrls; int /*<<< orphan*/  subdev; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mt9p031*) ; 
 int FUNC2 (struct mt9p031*) ; 
 int FUNC3 (struct mt9p031*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 struct i2c_client* FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct mt9p031 *mt9p031, bool on)
{
	struct i2c_client *client = FUNC5(&mt9p031->subdev);
	int ret;

	if (!on) {
		FUNC1(mt9p031);
		return 0;
	}

	ret = FUNC2(mt9p031);
	if (ret < 0)
		return ret;

	ret = FUNC3(mt9p031);
	if (ret < 0) {
		FUNC0(&client->dev, "Failed to reset the camera\n");
		return ret;
	}

	return FUNC4(&mt9p031->ctrls);
}