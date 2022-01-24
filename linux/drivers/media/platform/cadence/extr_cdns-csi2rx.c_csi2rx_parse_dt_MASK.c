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
struct TYPE_10__ {scalar_t__ num_data_lanes; int /*<<< orphan*/  data_lanes; } ;
struct TYPE_11__ {TYPE_1__ mipi_csi2; } ;
struct v4l2_fwnode_endpoint {scalar_t__ bus_type; TYPE_2__ bus; } ;
struct fwnode_handle {int dummy; } ;
struct device_node {int dummy; } ;
struct TYPE_13__ {int /*<<< orphan*/ * ops; } ;
struct TYPE_12__ {int /*<<< orphan*/  fwnode; } ;
struct TYPE_14__ {TYPE_3__ match; int /*<<< orphan*/  match_type; } ;
struct csi2rx_priv {scalar_t__ num_lanes; scalar_t__ max_lanes; TYPE_4__ notifier; int /*<<< orphan*/  subdev; TYPE_8__ asd; TYPE_9__* dev; int /*<<< orphan*/  lanes; } ;
struct TYPE_15__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  V4L2_ASYNC_MATCH_FWNODE ; 
 scalar_t__ V4L2_MBUS_CSI2_DPHY ; 
 int /*<<< orphan*/  csi2rx_notifier_ops ; 
 int /*<<< orphan*/  FUNC0 (TYPE_9__*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct fwnode_handle*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct fwnode_handle* FUNC4 (struct device_node*) ; 
 struct device_node* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*) ; 
 int FUNC7 (TYPE_4__*,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int FUNC10 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int FUNC11 (struct fwnode_handle*,struct v4l2_fwnode_endpoint*) ; 

__attribute__((used)) static int FUNC12(struct csi2rx_priv *csi2rx)
{
	struct v4l2_fwnode_endpoint v4l2_ep = { .bus_type = 0 };
	struct fwnode_handle *fwh;
	struct device_node *ep;
	int ret;

	ep = FUNC5(csi2rx->dev->of_node, 0, 0);
	if (!ep)
		return -EINVAL;

	fwh = FUNC4(ep);
	ret = FUNC11(fwh, &v4l2_ep);
	if (ret) {
		FUNC0(csi2rx->dev, "Could not parse v4l2 endpoint\n");
		FUNC6(ep);
		return ret;
	}

	if (v4l2_ep.bus_type != V4L2_MBUS_CSI2_DPHY) {
		FUNC0(csi2rx->dev, "Unsupported media bus type: 0x%x\n",
			v4l2_ep.bus_type);
		FUNC6(ep);
		return -EINVAL;
	}

	FUNC3(csi2rx->lanes, v4l2_ep.bus.mipi_csi2.data_lanes,
	       sizeof(csi2rx->lanes));
	csi2rx->num_lanes = v4l2_ep.bus.mipi_csi2.num_data_lanes;
	if (csi2rx->num_lanes > csi2rx->max_lanes) {
		FUNC0(csi2rx->dev, "Unsupported number of data-lanes: %d\n",
			csi2rx->num_lanes);
		FUNC6(ep);
		return -EINVAL;
	}

	csi2rx->asd.match.fwnode = FUNC1(fwh);
	csi2rx->asd.match_type = V4L2_ASYNC_MATCH_FWNODE;
	FUNC6(ep);

	FUNC9(&csi2rx->notifier);

	ret = FUNC7(&csi2rx->notifier, &csi2rx->asd);
	if (ret) {
		FUNC2(csi2rx->asd.match.fwnode);
		return ret;
	}

	csi2rx->notifier.ops = &csi2rx_notifier_ops;

	ret = FUNC10(&csi2rx->subdev,
						  &csi2rx->notifier);
	if (ret)
		FUNC8(&csi2rx->notifier);

	return ret;
}