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
typedef  int /*<<< orphan*/  u32 ;
struct dsa_switch {int dummy; } ;
struct TYPE_2__ {int num_gphy; } ;
struct bcm_sf2_priv {int wol_ports_mask; int moca_port; int int_phy_mask; TYPE_1__ hw_params; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CORE_DIS_LEARN ; 
 int /*<<< orphan*/  CORE_MEM_PSM_VDD_CTRL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct dsa_switch*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dsa_switch*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bcm_sf2_priv*,int) ; 
 struct bcm_sf2_priv* FUNC5 (struct dsa_switch*) ; 
 int /*<<< orphan*/  FUNC6 (struct bcm_sf2_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bcm_sf2_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct dsa_switch *ds, int port)
{
	struct bcm_sf2_priv *priv = FUNC5(ds);
	u32 reg;

	/* Disable learning while in WoL mode */
	if (priv->wol_ports_mask & (1 << port)) {
		reg = FUNC6(priv, CORE_DIS_LEARN);
		reg |= FUNC0(port);
		FUNC7(priv, reg, CORE_DIS_LEARN);
		return;
	}

	if (port == priv->moca_port)
		FUNC4(priv, port);

	if (priv->int_phy_mask & 1 << port && priv->hw_params.num_gphy == 1)
		FUNC3(ds, false);

	FUNC2(ds, port);

	/* Power down the port memory */
	reg = FUNC6(priv, CORE_MEM_PSM_VDD_CTRL);
	reg |= FUNC1(port);
	FUNC7(priv, reg, CORE_MEM_PSM_VDD_CTRL);
}