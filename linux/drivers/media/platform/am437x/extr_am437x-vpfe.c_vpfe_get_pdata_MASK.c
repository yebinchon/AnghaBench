#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int if_type; int bus_width; int hdpol; int vdpol; } ;
struct vpfe_subdev_info {TYPE_4__ vpfe_param; int /*<<< orphan*/ * routes; scalar_t__ can_route; TYPE_1__* inputs; scalar_t__ grp_id; } ;
struct vpfe_device {int /*<<< orphan*/  notifier; struct device* pdev; } ;
struct vpfe_config {int /*<<< orphan*/ * asd; struct vpfe_subdev_info* sub_devs; } ;
struct TYPE_6__ {int bus_width; unsigned int flags; } ;
struct TYPE_7__ {TYPE_2__ parallel; } ;
struct v4l2_fwnode_endpoint {TYPE_3__ bus; int /*<<< orphan*/  bus_type; } ;
struct v4l2_async_subdev {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; struct vpfe_config* platform_data; } ;
struct TYPE_5__ {unsigned int index; int /*<<< orphan*/  capabilities; int /*<<< orphan*/  std; int /*<<< orphan*/  type; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_OF ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  V4L2_INPUT_TYPE_CAMERA ; 
 int /*<<< orphan*/  V4L2_IN_CAP_STD ; 
 unsigned int V4L2_MBUS_HSYNC_ACTIVE_HIGH ; 
 unsigned int V4L2_MBUS_VSYNC_ACTIVE_HIGH ; 
 int /*<<< orphan*/  V4L2_STD_ALL ; 
 int VPFE_RAW_BAYER ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 struct vpfe_config* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*) ; 
 struct device_node* FUNC6 (int /*<<< orphan*/ ,struct device_node*) ; 
 struct device_node* FUNC7 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC8 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC9 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ ,struct v4l2_fwnode_endpoint*) ; 

__attribute__((used)) static struct vpfe_config *
FUNC15(struct vpfe_device *vpfe)
{
	struct device_node *endpoint = NULL;
	struct device *dev = vpfe->pdev;
	struct vpfe_subdev_info *sdinfo;
	struct vpfe_config *pdata;
	unsigned int flags;
	unsigned int i;
	int err;

	FUNC2(dev, "vpfe_get_pdata\n");

	FUNC13(&vpfe->notifier);

	if (!FUNC0(CONFIG_OF) || !dev->of_node)
		return dev->platform_data;

	pdata = FUNC4(dev, sizeof(*pdata), GFP_KERNEL);
	if (!pdata)
		return NULL;

	for (i = 0; ; i++) {
		struct v4l2_fwnode_endpoint bus_cfg = { .bus_type = 0 };
		struct device_node *rem;

		endpoint = FUNC6(dev->of_node, endpoint);
		if (!endpoint)
			break;

		sdinfo = &pdata->sub_devs[i];
		sdinfo->grp_id = 0;

		/* we only support camera */
		sdinfo->inputs[0].index = i;
		FUNC10(sdinfo->inputs[0].name, "Camera",
			sizeof(sdinfo->inputs[0].name));
		sdinfo->inputs[0].type = V4L2_INPUT_TYPE_CAMERA;
		sdinfo->inputs[0].std = V4L2_STD_ALL;
		sdinfo->inputs[0].capabilities = V4L2_IN_CAP_STD;

		sdinfo->can_route = 0;
		sdinfo->routes = NULL;

		FUNC9(endpoint, "ti,am437x-vpfe-interface",
				     &sdinfo->vpfe_param.if_type);
		if (sdinfo->vpfe_param.if_type < 0 ||
			sdinfo->vpfe_param.if_type > 4) {
			sdinfo->vpfe_param.if_type = VPFE_RAW_BAYER;
		}

		err = FUNC14(FUNC5(endpoint),
						 &bus_cfg);
		if (err) {
			FUNC3(dev, "Could not parse the endpoint\n");
			goto cleanup;
		}

		sdinfo->vpfe_param.bus_width = bus_cfg.bus.parallel.bus_width;

		if (sdinfo->vpfe_param.bus_width < 8 ||
			sdinfo->vpfe_param.bus_width > 16) {
			FUNC3(dev, "Invalid bus width.\n");
			goto cleanup;
		}

		flags = bus_cfg.bus.parallel.flags;

		if (flags & V4L2_MBUS_HSYNC_ACTIVE_HIGH)
			sdinfo->vpfe_param.hdpol = 1;

		if (flags & V4L2_MBUS_VSYNC_ACTIVE_HIGH)
			sdinfo->vpfe_param.vdpol = 1;

		rem = FUNC7(endpoint);
		if (!rem) {
			FUNC3(dev, "Remote device at %pOF not found\n",
				endpoint);
			goto cleanup;
		}

		pdata->asd[i] = FUNC11(
			&vpfe->notifier, FUNC5(rem),
			sizeof(struct v4l2_async_subdev));
		FUNC8(rem);
		if (FUNC1(pdata->asd[i]))
			goto cleanup;
	}

	FUNC8(endpoint);
	return pdata;

cleanup:
	FUNC12(&vpfe->notifier);
	FUNC8(endpoint);
	return NULL;
}