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
struct gswip_priv {int dummy; } ;
struct dsa_switch {struct gswip_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GSWIP_FDMA_PCTRL_EN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  GSWIP_MDIO_MDC_CFG0 ; 
 int /*<<< orphan*/  GSWIP_MDIO_PHY_LINK_DOWN ; 
 int /*<<< orphan*/  GSWIP_MDIO_PHY_LINK_MASK ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  GSWIP_SDMA_PCTRL_EN ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct dsa_switch*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct dsa_switch*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct gswip_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct gswip_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct dsa_switch *ds, int port)
{
	struct gswip_priv *priv = ds->priv;

	if (!FUNC5(ds, port))
		return;

	if (!FUNC4(ds, port)) {
		FUNC6(priv, GSWIP_MDIO_PHY_LINK_DOWN,
				GSWIP_MDIO_PHY_LINK_MASK,
				FUNC2(port));
		/* Deactivate MDIO auto polling */
		FUNC6(priv, FUNC0(port), 0, GSWIP_MDIO_MDC_CFG0);
	}

	FUNC7(priv, GSWIP_FDMA_PCTRL_EN, 0,
			  FUNC1(port));
	FUNC7(priv, GSWIP_SDMA_PCTRL_EN, 0,
			  FUNC3(port));
}