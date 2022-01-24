#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_9__ ;
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int num_data_lanes; } ;
struct TYPE_11__ {TYPE_1__ mipi_csi2; } ;
struct v4l2_fwnode_endpoint {TYPE_2__ bus; int /*<<< orphan*/  bus_type; } ;
struct TYPE_13__ {int /*<<< orphan*/ * ops; } ;
struct TYPE_12__ {int /*<<< orphan*/  fwnode; } ;
struct TYPE_14__ {TYPE_3__ match; int /*<<< orphan*/  match_type; } ;
struct mipid02_dev {TYPE_4__ notifier; int /*<<< orphan*/  sd; TYPE_8__ asd; struct v4l2_fwnode_endpoint rx; struct i2c_client* i2c_client; } ;
struct TYPE_15__ {int /*<<< orphan*/  of_node; } ;
struct i2c_client {TYPE_9__ dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  V4L2_ASYNC_MATCH_FWNODE ; 
 int /*<<< orphan*/  V4L2_MBUS_CSI2_DPHY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_9__*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mipid02_notifier_ops ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 struct device_node* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*) ; 
 int FUNC6 (TYPE_4__*,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int FUNC9 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int FUNC10 (int /*<<< orphan*/ ,struct v4l2_fwnode_endpoint*) ; 

__attribute__((used)) static int FUNC11(struct mipid02_dev *bridge)
{
	struct v4l2_fwnode_endpoint ep = { .bus_type = V4L2_MBUS_CSI2_DPHY };
	struct i2c_client *client = bridge->i2c_client;
	struct device_node *ep_node;
	int ret;

	/* parse rx (endpoint 0) */
	ep_node = FUNC4(bridge->i2c_client->dev.of_node,
						0, 0);
	if (!ep_node) {
		FUNC0(&client->dev, "unable to find port0 ep");
		ret = -EINVAL;
		goto error;
	}

	ret = FUNC10(FUNC3(ep_node), &ep);
	if (ret) {
		FUNC0(&client->dev, "Could not parse v4l2 endpoint %d\n",
			ret);
		goto error_of_node_put;
	}

	/* do some sanity checks */
	if (ep.bus.mipi_csi2.num_data_lanes > 2) {
		FUNC0(&client->dev, "max supported data lanes is 2 / got %d",
			ep.bus.mipi_csi2.num_data_lanes);
		ret = -EINVAL;
		goto error_of_node_put;
	}

	/* register it for later use */
	bridge->rx = ep;

	/* register async notifier so we get noticed when sensor is connected */
	bridge->asd.match.fwnode =
		FUNC1(FUNC3(ep_node));
	bridge->asd.match_type = V4L2_ASYNC_MATCH_FWNODE;
	FUNC5(ep_node);

	FUNC8(&bridge->notifier);
	ret = FUNC6(&bridge->notifier, &bridge->asd);
	if (ret) {
		FUNC0(&client->dev, "fail to register asd to notifier %d",
			ret);
		FUNC2(bridge->asd.match.fwnode);
		return ret;
	}
	bridge->notifier.ops = &mipid02_notifier_ops;

	ret = FUNC9(&bridge->sd,
						  &bridge->notifier);
	if (ret)
		FUNC7(&bridge->notifier);

	return ret;

error_of_node_put:
	FUNC5(ep_node);
error:

	return ret;
}