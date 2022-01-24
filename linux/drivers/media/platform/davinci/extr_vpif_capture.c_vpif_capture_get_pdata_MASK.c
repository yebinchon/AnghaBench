#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct vpif_subdev_info {int /*<<< orphan*/  name; } ;
struct vpif_capture_config {unsigned int* asd_sizes; unsigned int subdev_count; char* card_name; int /*<<< orphan*/ * asd; struct vpif_capture_chan_config* chan_config; struct vpif_subdev_info* subdev_info; } ;
struct TYPE_17__ {int hd_pol; int vd_pol; } ;
struct vpif_capture_chan_config {TYPE_6__ vpif_if; TYPE_3__* inputs; int /*<<< orphan*/  input_count; } ;
struct TYPE_15__ {unsigned int flags; int /*<<< orphan*/  bus_width; } ;
struct TYPE_16__ {TYPE_4__ parallel; } ;
struct v4l2_fwnode_endpoint {TYPE_5__ bus; int /*<<< orphan*/  bus_type; } ;
struct v4l2_async_subdev {int dummy; } ;
struct TYPE_19__ {scalar_t__ of_node; struct vpif_capture_config* platform_data; TYPE_1__* parent; } ;
struct platform_device {TYPE_8__ dev; } ;
struct device_node {int /*<<< orphan*/  full_name; } ;
struct TYPE_18__ {int /*<<< orphan*/  notifier; } ;
struct TYPE_13__ {int /*<<< orphan*/  capabilities; int /*<<< orphan*/  std; int /*<<< orphan*/  type; } ;
struct TYPE_14__ {TYPE_2__ input; } ;
struct TYPE_12__ {scalar_t__ of_node; } ;

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
 unsigned int VPIF_CAPTURE_NUM_CHANNELS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__*,char*,struct device_node*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__*,char*) ; 
 void* FUNC4 (TYPE_8__*,unsigned int,int,int /*<<< orphan*/ ) ; 
 struct vpif_capture_config* FUNC5 (TYPE_8__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*) ; 
 struct device_node* FUNC7 (scalar_t__,struct device_node*) ; 
 struct device_node* FUNC8 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC9 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ ,struct v4l2_fwnode_endpoint*) ; 
 TYPE_7__ vpif_obj ; 

__attribute__((used)) static struct vpif_capture_config *
FUNC14(struct platform_device *pdev)
{
	struct device_node *endpoint = NULL;
	struct device_node *rem = NULL;
	struct vpif_capture_config *pdata;
	struct vpif_subdev_info *sdinfo;
	struct vpif_capture_chan_config *chan;
	unsigned int i;

	FUNC12(&vpif_obj.notifier);

	/*
	 * DT boot: OF node from parent device contains
	 * video ports & endpoints data.
	 */
	if (pdev->dev.parent && pdev->dev.parent->of_node)
		pdev->dev.of_node = pdev->dev.parent->of_node;
	if (!FUNC0(CONFIG_OF) || !pdev->dev.of_node)
		return pdev->dev.platform_data;

	pdata = FUNC5(&pdev->dev, sizeof(*pdata), GFP_KERNEL);
	if (!pdata)
		return NULL;
	pdata->subdev_info =
		FUNC4(&pdev->dev,
			     VPIF_CAPTURE_NUM_CHANNELS,
			     sizeof(*pdata->subdev_info),
			     GFP_KERNEL);

	if (!pdata->subdev_info)
		return NULL;

	for (i = 0; i < VPIF_CAPTURE_NUM_CHANNELS; i++) {
		struct v4l2_fwnode_endpoint bus_cfg = { .bus_type = 0 };
		unsigned int flags;
		int err;

		endpoint = FUNC7(pdev->dev.of_node,
						      endpoint);
		if (!endpoint)
			break;

		rem = FUNC8(endpoint);
		if (!rem) {
			FUNC2(&pdev->dev, "Remote device at %pOF not found\n",
				endpoint);
			goto done;
		}

		sdinfo = &pdata->subdev_info[i];
		chan = &pdata->chan_config[i];
		chan->inputs = FUNC4(&pdev->dev,
					    VPIF_CAPTURE_NUM_CHANNELS,
					    sizeof(*chan->inputs),
					    GFP_KERNEL);
		if (!chan->inputs)
			goto err_cleanup;

		chan->input_count++;
		chan->inputs[i].input.type = V4L2_INPUT_TYPE_CAMERA;
		chan->inputs[i].input.std = V4L2_STD_ALL;
		chan->inputs[i].input.capabilities = V4L2_IN_CAP_STD;

		err = FUNC13(FUNC6(endpoint),
						 &bus_cfg);
		if (err) {
			FUNC3(&pdev->dev, "Could not parse the endpoint\n");
			FUNC9(rem);
			goto done;
		}

		FUNC2(&pdev->dev, "Endpoint %pOF, bus_width = %d\n",
			endpoint, bus_cfg.bus.parallel.bus_width);

		flags = bus_cfg.bus.parallel.flags;

		if (flags & V4L2_MBUS_HSYNC_ACTIVE_HIGH)
			chan->vpif_if.hd_pol = 1;

		if (flags & V4L2_MBUS_VSYNC_ACTIVE_HIGH)
			chan->vpif_if.vd_pol = 1;

		FUNC2(&pdev->dev, "Remote device %pOF found\n", rem);
		sdinfo->name = rem->full_name;

		pdata->asd[i] = FUNC10(
			&vpif_obj.notifier, FUNC6(rem),
			sizeof(struct v4l2_async_subdev));
		if (FUNC1(pdata->asd[i]))
			goto err_cleanup;

		FUNC9(rem);
	}

done:
	FUNC9(endpoint);
	pdata->asd_sizes[0] = i;
	pdata->subdev_count = i;
	pdata->card_name = "DA850/OMAP-L138 Video Capture";

	return pdata;

err_cleanup:
	FUNC9(rem);
	FUNC9(endpoint);
	FUNC11(&vpif_obj.notifier);

	return NULL;
}