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
struct TYPE_5__ {scalar_t__ num_data_lanes; } ;
struct TYPE_6__ {TYPE_2__ mipi_csi2; } ;
struct v4l2_fwnode_endpoint {scalar_t__ bus_type; TYPE_3__ bus; } ;
struct s5c73m3_platform_data {int /*<<< orphan*/  gpio_reset; int /*<<< orphan*/  gpio_stby; int /*<<< orphan*/  mclk_frequency; } ;
struct s5c73m3 {int /*<<< orphan*/  mclk_frequency; int /*<<< orphan*/  clock; int /*<<< orphan*/ * gpio; TYPE_1__* i2c_client; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; struct s5c73m3_platform_data* platform_data; } ;
struct TYPE_4__ {struct device dev; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 size_t RST ; 
 int /*<<< orphan*/  S5C73M3_CLK_NAME ; 
 int /*<<< orphan*/  S5C73M3_DEFAULT_MCLK_FREQ ; 
 scalar_t__ S5C73M3_MIPI_DATA_LANES ; 
 size_t STBY ; 
 scalar_t__ V4L2_MBUS_CSI2_DPHY ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*) ; 
 struct device_node* FUNC7 (struct device_node*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct device_node*) ; 
 scalar_t__ FUNC9 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct s5c73m3*) ; 
 int FUNC11 (int /*<<< orphan*/ ,struct v4l2_fwnode_endpoint*) ; 

__attribute__((used)) static int FUNC12(struct s5c73m3 *state)
{
	struct device *dev = &state->i2c_client->dev;
	const struct s5c73m3_platform_data *pdata = dev->platform_data;
	struct device_node *node = dev->of_node;
	struct device_node *node_ep;
	struct v4l2_fwnode_endpoint ep = { .bus_type = 0 };
	int ret;

	if (!node) {
		if (!pdata) {
			FUNC2(dev, "Platform data not specified\n");
			return -EINVAL;
		}

		state->mclk_frequency = pdata->mclk_frequency;
		state->gpio[STBY] = pdata->gpio_stby;
		state->gpio[RST] = pdata->gpio_reset;
		return 0;
	}

	state->clock = FUNC5(dev, S5C73M3_CLK_NAME);
	if (FUNC0(state->clock))
		return FUNC1(state->clock);

	if (FUNC9(node, "clock-frequency",
				 &state->mclk_frequency)) {
		state->mclk_frequency = S5C73M3_DEFAULT_MCLK_FREQ;
		FUNC3(dev, "using default %u Hz clock frequency\n",
					state->mclk_frequency);
	}

	ret = FUNC10(state);
	if (ret < 0)
		return -EINVAL;

	node_ep = FUNC7(node, NULL);
	if (!node_ep) {
		FUNC4(dev, "no endpoint defined for node: %pOF\n", node);
		return 0;
	}

	ret = FUNC11(FUNC6(node_ep), &ep);
	FUNC8(node_ep);
	if (ret)
		return ret;

	if (ep.bus_type != V4L2_MBUS_CSI2_DPHY) {
		FUNC2(dev, "unsupported bus type\n");
		return -EINVAL;
	}
	/*
	 * Number of MIPI CSI-2 data lanes is currently not configurable,
	 * always a default value of 4 lanes is used.
	 */
	if (ep.bus.mipi_csi2.num_data_lanes != S5C73M3_MIPI_DATA_LANES)
		FUNC3(dev, "falling back to 4 MIPI CSI-2 data lanes\n");

	return 0;
}