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
struct gswip_priv {int /*<<< orphan*/  dev; int /*<<< orphan*/  rcu_regmap; } ;
struct gswip_gphy_fw {int /*<<< orphan*/  reset; int /*<<< orphan*/  clk_gate; int /*<<< orphan*/  fw_addr_offset; int /*<<< orphan*/  fw_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct gswip_priv *priv,
				 struct gswip_gphy_fw *gphy_fw)
{
	int ret;

	/* check if the device was fully probed */
	if (!gphy_fw->fw_name)
		return;

	ret = FUNC2(priv->rcu_regmap, gphy_fw->fw_addr_offset, 0);
	if (ret)
		FUNC1(priv->dev, "can not reset GPHY FW pointer");

	FUNC0(gphy_fw->clk_gate);

	FUNC3(gphy_fw->reset);
}