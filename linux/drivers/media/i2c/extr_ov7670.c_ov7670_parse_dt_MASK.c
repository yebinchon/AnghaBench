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
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {TYPE_1__ parallel; } ;
struct v4l2_fwnode_endpoint {scalar_t__ bus_type; TYPE_2__ bus; } ;
struct ov7670_info {int pclk_hb_disable; int /*<<< orphan*/  mbus_config; } ;
struct fwnode_handle {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ V4L2_MBUS_PARALLEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 struct fwnode_handle* FUNC1 (struct device*) ; 
 struct fwnode_handle* FUNC2 (struct fwnode_handle*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct fwnode_handle*) ; 
 scalar_t__ FUNC4 (struct fwnode_handle*,char*) ; 
 int FUNC5 (struct fwnode_handle*,struct v4l2_fwnode_endpoint*) ; 

__attribute__((used)) static int FUNC6(struct device *dev,
			   struct ov7670_info *info)
{
	struct fwnode_handle *fwnode = FUNC1(dev);
	struct v4l2_fwnode_endpoint bus_cfg = { .bus_type = 0 };
	struct fwnode_handle *ep;
	int ret;

	if (!fwnode)
		return -EINVAL;

	info->pclk_hb_disable = false;
	if (FUNC4(fwnode, "ov7670,pclk-hb-disable"))
		info->pclk_hb_disable = true;

	ep = FUNC2(fwnode, NULL);
	if (!ep)
		return -EINVAL;

	ret = FUNC5(ep, &bus_cfg);
	FUNC3(ep);
	if (ret)
		return ret;

	if (bus_cfg.bus_type != V4L2_MBUS_PARALLEL) {
		FUNC0(dev, "Unsupported media bus type\n");
		return ret;
	}
	info->mbus_config = bus_cfg.bus.parallel.flags;

	return 0;
}