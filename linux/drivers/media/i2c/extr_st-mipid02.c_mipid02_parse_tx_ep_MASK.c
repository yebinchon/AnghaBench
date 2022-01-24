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
struct v4l2_fwnode_endpoint {int /*<<< orphan*/  bus_type; } ;
struct mipid02_dev {struct v4l2_fwnode_endpoint tx; struct i2c_client* i2c_client; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  V4L2_MBUS_PARALLEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*) ; 
 struct device_node* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct v4l2_fwnode_endpoint*) ; 

__attribute__((used)) static int FUNC5(struct mipid02_dev *bridge)
{
	struct v4l2_fwnode_endpoint ep = { .bus_type = V4L2_MBUS_PARALLEL };
	struct i2c_client *client = bridge->i2c_client;
	struct device_node *ep_node;
	int ret;

	/* parse tx (endpoint 2) */
	ep_node = FUNC2(bridge->i2c_client->dev.of_node,
						2, 0);
	if (!ep_node) {
		FUNC0(&client->dev, "unable to find port1 ep");
		ret = -EINVAL;
		goto error;
	}

	ret = FUNC4(FUNC1(ep_node), &ep);
	if (ret) {
		FUNC0(&client->dev, "Could not parse v4l2 endpoint\n");
		goto error_of_node_put;
	}

	FUNC3(ep_node);
	bridge->tx = ep;

	return 0;

error_of_node_put:
	FUNC3(ep_node);
error:

	return -EINVAL;
}