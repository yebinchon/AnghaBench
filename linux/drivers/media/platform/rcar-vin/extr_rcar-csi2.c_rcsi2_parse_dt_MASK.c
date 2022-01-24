#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct v4l2_fwnode_endpoint {int /*<<< orphan*/  bus_type; } ;
struct TYPE_10__ {int /*<<< orphan*/ * ops; } ;
struct TYPE_9__ {int /*<<< orphan*/  fwnode; } ;
struct TYPE_11__ {TYPE_1__ match; int /*<<< orphan*/  match_type; } ;
struct rcar_csi2 {TYPE_2__ notifier; int /*<<< orphan*/  subdev; TYPE_6__ asd; TYPE_7__* dev; } ;
struct device_node {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  V4L2_ASYNC_MATCH_FWNODE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_7__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 struct device_node* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*) ; 
 int /*<<< orphan*/  rcar_csi2_notify_ops ; 
 int FUNC7 (struct rcar_csi2*,struct v4l2_fwnode_endpoint*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_2__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int FUNC12 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int FUNC13 (int /*<<< orphan*/ ,struct v4l2_fwnode_endpoint*) ; 

__attribute__((used)) static int FUNC14(struct rcar_csi2 *priv)
{
	struct device_node *ep;
	struct v4l2_fwnode_endpoint v4l2_ep = { .bus_type = 0 };
	int ret;

	ep = FUNC5(priv->dev->of_node, 0, 0);
	if (!ep) {
		FUNC1(priv->dev, "Not connected to subdevice\n");
		return -EINVAL;
	}

	ret = FUNC13(FUNC4(ep), &v4l2_ep);
	if (ret) {
		FUNC1(priv->dev, "Could not parse v4l2 endpoint\n");
		FUNC6(ep);
		return -EINVAL;
	}

	ret = FUNC7(priv, &v4l2_ep);
	if (ret) {
		FUNC6(ep);
		return ret;
	}

	priv->asd.match.fwnode =
		FUNC2(FUNC4(ep));
	priv->asd.match_type = V4L2_ASYNC_MATCH_FWNODE;

	FUNC6(ep);

	FUNC11(&priv->notifier);

	ret = FUNC9(&priv->notifier, &priv->asd);
	if (ret) {
		FUNC3(priv->asd.match.fwnode);
		return ret;
	}

	priv->notifier.ops = &rcar_csi2_notify_ops;

	FUNC0(priv->dev, "Found '%pOF'\n",
		FUNC8(priv->asd.match.fwnode));

	ret = FUNC12(&priv->subdev,
						  &priv->notifier);
	if (ret)
		FUNC10(&priv->notifier);

	return ret;
}