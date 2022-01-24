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
struct xvip_dma {int /*<<< orphan*/  list; } ;
struct xvip_composite_device {int /*<<< orphan*/  v4l2_caps; int /*<<< orphan*/  dmas; int /*<<< orphan*/  dev; } ;
struct device_node {int dummy; } ;
typedef  enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int V4L2_BUF_TYPE_VIDEO_OUTPUT ; 
 int /*<<< orphan*/  V4L2_CAP_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  V4L2_CAP_VIDEO_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct device_node*) ; 
 struct xvip_dma* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct device_node*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*,char*,unsigned int*) ; 
 scalar_t__ FUNC5 (char const*,char*) ; 
 int FUNC6 (struct xvip_composite_device*,struct xvip_dma*,int,unsigned int) ; 

__attribute__((used)) static int FUNC7(struct xvip_composite_device *xdev,
				   struct device_node *node)
{
	struct xvip_dma *dma;
	enum v4l2_buf_type type;
	const char *direction;
	unsigned int index;
	int ret;

	ret = FUNC3(node, "direction", &direction);
	if (ret < 0)
		return ret;

	if (FUNC5(direction, "input") == 0)
		type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
	else if (FUNC5(direction, "output") == 0)
		type = V4L2_BUF_TYPE_VIDEO_OUTPUT;
	else
		return -EINVAL;

	FUNC4(node, "reg", &index);

	dma = FUNC1(xdev->dev, sizeof(*dma), GFP_KERNEL);
	if (dma == NULL)
		return -ENOMEM;

	ret = FUNC6(xdev, dma, type, index);
	if (ret < 0) {
		FUNC0(xdev->dev, "%pOF initialization failed\n", node);
		return ret;
	}

	FUNC2(&dma->list, &xdev->dmas);

	xdev->v4l2_caps |= type == V4L2_BUF_TYPE_VIDEO_CAPTURE
			 ? V4L2_CAP_VIDEO_CAPTURE : V4L2_CAP_VIDEO_OUTPUT;

	return 0;
}