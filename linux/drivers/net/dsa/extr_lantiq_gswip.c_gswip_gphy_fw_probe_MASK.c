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
typedef  int u32 ;
struct gswip_priv {TYPE_1__* gphy_fw_name_cfg; struct device* dev; } ;
struct gswip_gphy_fw {int fw_addr_offset; int /*<<< orphan*/  reset; int /*<<< orphan*/  fw_name; int /*<<< orphan*/  clk_gate; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  gphyname ;
struct TYPE_2__ {int /*<<< orphan*/  ge_firmware_name; int /*<<< orphan*/  fe_firmware_name; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPROBE_DEFER ; 
#define  GPHY_MODE_FE 129 
#define  GPHY_MODE_GE 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int FUNC4 (struct gswip_priv*,struct gswip_gphy_fw*) ; 
 int FUNC5 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int) ; 

__attribute__((used)) static int FUNC8(struct gswip_priv *priv,
			       struct gswip_gphy_fw *gphy_fw,
			       struct device_node *gphy_fw_np, int i)
{
	struct device *dev = priv->dev;
	u32 gphy_mode;
	int ret;
	char gphyname[10];

	FUNC7(gphyname, sizeof(gphyname), "gphy%d", i);

	gphy_fw->clk_gate = FUNC3(dev, gphyname);
	if (FUNC0(gphy_fw->clk_gate)) {
		FUNC2(dev, "Failed to lookup gate clock\n");
		return FUNC1(gphy_fw->clk_gate);
	}

	ret = FUNC5(gphy_fw_np, "reg", &gphy_fw->fw_addr_offset);
	if (ret)
		return ret;

	ret = FUNC5(gphy_fw_np, "lantiq,gphy-mode", &gphy_mode);
	/* Default to GE mode */
	if (ret)
		gphy_mode = GPHY_MODE_GE;

	switch (gphy_mode) {
	case GPHY_MODE_FE:
		gphy_fw->fw_name = priv->gphy_fw_name_cfg->fe_firmware_name;
		break;
	case GPHY_MODE_GE:
		gphy_fw->fw_name = priv->gphy_fw_name_cfg->ge_firmware_name;
		break;
	default:
		FUNC2(dev, "Unknown GPHY mode %d\n", gphy_mode);
		return -EINVAL;
	}

	gphy_fw->reset = FUNC6(gphy_fw_np);
	if (FUNC0(gphy_fw->reset)) {
		if (FUNC1(gphy_fw->reset) != -EPROBE_DEFER)
			FUNC2(dev, "Failed to lookup gphy reset\n");
		return FUNC1(gphy_fw->reset);
	}

	return FUNC4(priv, gphy_fw);
}