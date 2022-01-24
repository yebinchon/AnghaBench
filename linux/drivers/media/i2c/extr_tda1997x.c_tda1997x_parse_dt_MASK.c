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
typedef  int u32 ;
struct TYPE_6__ {unsigned int flags; int /*<<< orphan*/  bus_width; } ;
struct TYPE_7__ {TYPE_2__ parallel; } ;
struct v4l2_fwnode_endpoint {TYPE_3__ bus; int /*<<< orphan*/  bus_type; } ;
struct tda1997x_platform_data {int vidout_inv_hs; int vidout_inv_vs; int vidout_inv_de; int* vidout_port_cfg; int audout_layoutauto; int audout_layout; int audout_width; int audout_mclk_fs; int /*<<< orphan*/  audout_format; int /*<<< orphan*/  vidout_bus_width; int /*<<< orphan*/  vidout_bus_type; int /*<<< orphan*/  vidout_sel_de; int /*<<< orphan*/  vidout_sel_vs; int /*<<< orphan*/  vidout_sel_hs; } ;
struct tda1997x_state {TYPE_4__* client; struct tda1997x_platform_data pdata; } ;
struct device_node {int dummy; } ;
struct TYPE_5__ {struct device_node* of_node; } ;
struct TYPE_8__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDFMT_TYPE_DISABLED ; 
 int /*<<< orphan*/  AUDFMT_TYPE_I2S ; 
 int /*<<< orphan*/  AUDFMT_TYPE_SPDIF ; 
 int /*<<< orphan*/  DE_FREF_SEL_DE_VHREF ; 
 int EINVAL ; 
 int /*<<< orphan*/  HS_HREF_SEL_HREF_VHREF ; 
 unsigned int V4L2_MBUS_DATA_ACTIVE_LOW ; 
 unsigned int V4L2_MBUS_HSYNC_ACTIVE_LOW ; 
 unsigned int V4L2_MBUS_VSYNC_ACTIVE_LOW ; 
 int /*<<< orphan*/  VS_VREF_SEL_VREF_HDMI ; 
 int /*<<< orphan*/  FUNC0 (struct device_node*) ; 
 struct device_node* FUNC1 (struct device_node*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 
 int FUNC3 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*,char*,int,int*) ; 
 scalar_t__ FUNC7 (char const*,char*) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct v4l2_fwnode_endpoint*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,char*) ; 

__attribute__((used)) static int FUNC10(struct tda1997x_state *state)
{
	struct tda1997x_platform_data *pdata = &state->pdata;
	struct v4l2_fwnode_endpoint bus_cfg = { .bus_type = 0 };
	struct device_node *ep;
	struct device_node *np;
	unsigned int flags;
	const char *str;
	int ret;
	u32 v;

	/*
	 * setup default values:
	 * - HREF: active high from start to end of row
	 * - VS: Vertical Sync active high at beginning of frame
	 * - DE: Active high when data valid
	 * - A_CLK: 128*Fs
	 */
	pdata->vidout_sel_hs = HS_HREF_SEL_HREF_VHREF;
	pdata->vidout_sel_vs = VS_VREF_SEL_VREF_HDMI;
	pdata->vidout_sel_de = DE_FREF_SEL_DE_VHREF;

	np = state->client->dev.of_node;
	ep = FUNC1(np, NULL);
	if (!ep)
		return -EINVAL;

	ret = FUNC8(FUNC0(ep), &bus_cfg);
	if (ret) {
		FUNC2(ep);
		return ret;
	}
	FUNC2(ep);
	pdata->vidout_bus_type = bus_cfg.bus_type;

	/* polarity of HS/VS/DE */
	flags = bus_cfg.bus.parallel.flags;
	if (flags & V4L2_MBUS_HSYNC_ACTIVE_LOW)
		pdata->vidout_inv_hs = 1;
	if (flags & V4L2_MBUS_VSYNC_ACTIVE_LOW)
		pdata->vidout_inv_vs = 1;
	if (flags & V4L2_MBUS_DATA_ACTIVE_LOW)
		pdata->vidout_inv_de = 1;
	pdata->vidout_bus_width = bus_cfg.bus.parallel.bus_width;

	/* video output port config */
	ret = FUNC3(np, "nxp,vidout-portcfg");
	if (ret > 0) {
		u32 reg, val, i;

		for (i = 0; i < ret / 2 && i < 9; i++) {
			FUNC6(np, "nxp,vidout-portcfg",
						   i * 2, &reg);
			FUNC6(np, "nxp,vidout-portcfg",
						   i * 2 + 1, &val);
			if (reg < 9)
				pdata->vidout_port_cfg[reg] = val;
		}
	} else {
		FUNC9(state->client, "nxp,vidout-portcfg missing\n");
		return -EINVAL;
	}

	/* default to channel layout dictated by packet header */
	pdata->audout_layoutauto = true;

	pdata->audout_format = AUDFMT_TYPE_DISABLED;
	if (!FUNC4(np, "nxp,audout-format", &str)) {
		if (FUNC7(str, "i2s") == 0)
			pdata->audout_format = AUDFMT_TYPE_I2S;
		else if (FUNC7(str, "spdif") == 0)
			pdata->audout_format = AUDFMT_TYPE_SPDIF;
		else {
			FUNC9(state->client, "nxp,audout-format invalid\n");
			return -EINVAL;
		}
		if (!FUNC5(np, "nxp,audout-layout", &v)) {
			switch (v) {
			case 0:
			case 1:
				break;
			default:
				FUNC9(state->client,
					"nxp,audout-layout invalid\n");
				return -EINVAL;
			}
			pdata->audout_layout = v;
		}
		if (!FUNC5(np, "nxp,audout-width", &v)) {
			switch (v) {
			case 16:
			case 32:
				break;
			default:
				FUNC9(state->client,
					"nxp,audout-width invalid\n");
				return -EINVAL;
			}
			pdata->audout_width = v;
		}
		if (!FUNC5(np, "nxp,audout-mclk-fs", &v)) {
			switch (v) {
			case 512:
			case 256:
			case 128:
			case 64:
			case 32:
			case 16:
				break;
			default:
				FUNC9(state->client,
					"nxp,audout-mclk-fs invalid\n");
				return -EINVAL;
			}
			pdata->audout_mclk_fs = v;
		}
	}

	return 0;
}