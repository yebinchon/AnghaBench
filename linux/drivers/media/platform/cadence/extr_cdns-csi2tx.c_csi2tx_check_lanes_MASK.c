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
struct TYPE_4__ {int num_data_lanes; int* data_lanes; } ;
struct TYPE_5__ {TYPE_1__ mipi_csi2; } ;
struct v4l2_fwnode_endpoint {scalar_t__ bus_type; TYPE_2__ bus; } ;
struct device_node {int dummy; } ;
struct csi2tx_priv {int num_lanes; int max_lanes; int /*<<< orphan*/  lanes; TYPE_3__* dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ V4L2_MBUS_CSI2_DPHY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 
 struct device_node* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct v4l2_fwnode_endpoint*) ; 

__attribute__((used)) static int FUNC6(struct csi2tx_priv *csi2tx)
{
	struct v4l2_fwnode_endpoint v4l2_ep = { .bus_type = 0 };
	struct device_node *ep;
	int ret, i;

	ep = FUNC3(csi2tx->dev->of_node, 0, 0);
	if (!ep)
		return -EINVAL;

	ret = FUNC5(FUNC2(ep), &v4l2_ep);
	if (ret) {
		FUNC0(csi2tx->dev, "Could not parse v4l2 endpoint\n");
		goto out;
	}

	if (v4l2_ep.bus_type != V4L2_MBUS_CSI2_DPHY) {
		FUNC0(csi2tx->dev, "Unsupported media bus type: 0x%x\n",
			v4l2_ep.bus_type);
		ret = -EINVAL;
		goto out;
	}

	csi2tx->num_lanes = v4l2_ep.bus.mipi_csi2.num_data_lanes;
	if (csi2tx->num_lanes > csi2tx->max_lanes) {
		FUNC0(csi2tx->dev,
			"Current configuration uses more lanes than supported\n");
		ret = -EINVAL;
		goto out;
	}

	for (i = 0; i < csi2tx->num_lanes; i++) {
		if (v4l2_ep.bus.mipi_csi2.data_lanes[i] < 1) {
			FUNC0(csi2tx->dev, "Invalid lane[%d] number: %u\n",
				i, v4l2_ep.bus.mipi_csi2.data_lanes[i]);
			ret = -EINVAL;
			goto out;
		}
	}

	FUNC1(csi2tx->lanes, v4l2_ep.bus.mipi_csi2.data_lanes,
	       sizeof(csi2tx->lanes));

out:
	FUNC4(ep);
	return ret;
}