#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ parallel; } ;
struct v4l2_fwnode_endpoint {TYPE_2__ bus; int /*<<< orphan*/  bus_type; } ;
struct mt9m111 {int pclk_sample; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct fwnode_handle {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  V4L2_MBUS_PARALLEL ; 
 int V4L2_MBUS_PCLK_SAMPLE_RISING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct fwnode_handle* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fwnode_handle*) ; 
 int FUNC3 (struct fwnode_handle*,struct v4l2_fwnode_endpoint*) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client, struct mt9m111 *mt9m111)
{
	struct v4l2_fwnode_endpoint bus_cfg = {
		.bus_type = V4L2_MBUS_PARALLEL
	};
	struct fwnode_handle *np;
	int ret;

	np = FUNC1(FUNC0(&client->dev), NULL);
	if (!np)
		return -EINVAL;

	ret = FUNC3(np, &bus_cfg);
	if (ret)
		goto out_put_fw;

	mt9m111->pclk_sample = !!(bus_cfg.bus.parallel.flags &
				  V4L2_MBUS_PCLK_SAMPLE_RISING);

out_put_fw:
	FUNC2(np);
	return ret;
}