#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct video_i2c_data {TYPE_2__ vdev; TYPE_1__ v4l2_dev; int /*<<< orphan*/  regmap; } ;
struct v4l2_capability {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  card; int /*<<< orphan*/  driver; } ;
struct i2c_client {int addr; TYPE_3__* adapter; } ;
struct file {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_6__ {int nr; } ;

/* Variables and functions */
 struct device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct i2c_client* FUNC3 (struct device*) ; 
 struct video_i2c_data* FUNC4 (struct file*) ; 

__attribute__((used)) static int FUNC5(struct file *file, void  *priv,
				struct v4l2_capability *vcap)
{
	struct video_i2c_data *data = FUNC4(file);
	struct device *dev = FUNC0(data->regmap);
	struct i2c_client *client = FUNC3(dev);

	FUNC2(vcap->driver, data->v4l2_dev.name, sizeof(vcap->driver));
	FUNC2(vcap->card, data->vdev.name, sizeof(vcap->card));

	FUNC1(vcap->bus_info, "I2C:%d-%d", client->adapter->nr, client->addr);

	return 0;
}