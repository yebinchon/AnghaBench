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
struct ov2680_dev {int /*<<< orphan*/  lock; struct i2c_client* i2c_client; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct ov2680_dev* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct ov2680_dev*) ; 
 int FUNC6 (struct ov2680_dev*) ; 
 int FUNC7 (struct ov2680_dev*) ; 
 int FUNC8 (struct ov2680_dev*) ; 
 int FUNC9 (struct ov2680_dev*) ; 

__attribute__((used)) static int FUNC10(struct i2c_client *client)
{
	struct device *dev = &client->dev;
	struct ov2680_dev *sensor;
	int ret;

	sensor = FUNC2(dev, sizeof(*sensor), GFP_KERNEL);
	if (!sensor)
		return -ENOMEM;

	sensor->i2c_client = client;

	ret = FUNC8(sensor);
	if (ret < 0)
		return -EINVAL;

	ret = FUNC7(sensor);
	if (ret < 0)
		return ret;

	ret = FUNC6(sensor);
	if (ret < 0) {
		FUNC0(dev, "failed to get regulators\n");
		return ret;
	}

	FUNC4(&sensor->lock);

	ret = FUNC5(sensor);
	if (ret < 0)
		goto lock_destroy;

	ret = FUNC9(sensor);
	if (ret < 0)
		goto lock_destroy;

	FUNC1(dev, "ov2680 init correctly\n");

	return 0;

lock_destroy:
	FUNC0(dev, "ov2680 init fail: %d\n", ret);
	FUNC3(&sensor->lock);

	return ret;
}