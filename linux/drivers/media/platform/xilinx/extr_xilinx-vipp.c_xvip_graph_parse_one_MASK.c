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
struct xvip_graph_entity {int dummy; } ;
struct xvip_composite_device {int /*<<< orphan*/  notifier; TYPE_1__* dev; } ;
struct v4l2_async_subdev {int dummy; } ;
struct fwnode_handle {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct v4l2_async_subdev*) ; 
 int FUNC1 (struct v4l2_async_subdev*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,struct fwnode_handle*) ; 
 struct fwnode_handle* FUNC3 (struct fwnode_handle*,struct fwnode_handle*) ; 
 struct fwnode_handle* FUNC4 (struct fwnode_handle*) ; 
 int /*<<< orphan*/  FUNC5 (struct fwnode_handle*) ; 
 struct fwnode_handle* FUNC6 (int /*<<< orphan*/ ) ; 
 struct v4l2_async_subdev* FUNC7 (int /*<<< orphan*/ *,struct fwnode_handle*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct xvip_composite_device*,struct fwnode_handle*) ; 

__attribute__((used)) static int FUNC10(struct xvip_composite_device *xdev,
				struct fwnode_handle *fwnode)
{
	struct fwnode_handle *remote;
	struct fwnode_handle *ep = NULL;
	int ret = 0;

	FUNC2(xdev->dev, "parsing node %p\n", fwnode);

	while (1) {
		struct v4l2_async_subdev *asd;

		ep = FUNC3(fwnode, ep);
		if (ep == NULL)
			break;

		FUNC2(xdev->dev, "handling endpoint %p\n", ep);

		remote = FUNC4(ep);
		if (remote == NULL) {
			ret = -EINVAL;
			goto err_notifier_cleanup;
		}

		FUNC5(ep);

		/* Skip entities that we have already processed. */
		if (remote == FUNC6(xdev->dev->of_node) ||
		    FUNC9(xdev, remote)) {
			FUNC5(remote);
			continue;
		}

		asd = FUNC7(
			&xdev->notifier, remote,
			sizeof(struct xvip_graph_entity));
		FUNC5(remote);
		if (FUNC0(asd)) {
			ret = FUNC1(asd);
			goto err_notifier_cleanup;
		}
	}

	return 0;

err_notifier_cleanup:
	FUNC8(&xdev->notifier);
	FUNC5(ep);
	return ret;
}