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
struct v4l2_fwnode_endpoint {unsigned int nr_of_link_frequencies; scalar_t__* link_frequencies; int /*<<< orphan*/  bus_type; } ;
struct fwnode_handle {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ IMX214_DEFAULT_LINK_FREQ ; 
 int /*<<< orphan*/  V4L2_MBUS_CSI2_DPHY ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 struct fwnode_handle* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct fwnode_handle*) ; 
 int FUNC4 (struct fwnode_handle*,struct v4l2_fwnode_endpoint*) ; 
 int /*<<< orphan*/  FUNC5 (struct v4l2_fwnode_endpoint*) ; 

__attribute__((used)) static int FUNC6(struct device *dev)
{
	struct fwnode_handle *endpoint;
	struct v4l2_fwnode_endpoint bus_cfg = {
		.bus_type = V4L2_MBUS_CSI2_DPHY,
	};
	unsigned int i;
	int ret;

	endpoint = FUNC2(FUNC1(dev), NULL);
	if (!endpoint) {
		FUNC0(dev, "endpoint node not found\n");
		return -EINVAL;
	}

	ret = FUNC4(endpoint, &bus_cfg);
	if (ret) {
		FUNC0(dev, "parsing endpoint node failed\n");
		goto done;
	}

	for (i = 0; i < bus_cfg.nr_of_link_frequencies; i++)
		if (bus_cfg.link_frequencies[i] == IMX214_DEFAULT_LINK_FREQ)
			break;

	if (i == bus_cfg.nr_of_link_frequencies) {
		FUNC0(dev, "link-frequencies %d not supported, Please review your DT\n",
			IMX214_DEFAULT_LINK_FREQ);
		ret = -EINVAL;
		goto done;
	}

done:
	FUNC5(&bus_cfg);
	FUNC3(endpoint);
	return ret;
}