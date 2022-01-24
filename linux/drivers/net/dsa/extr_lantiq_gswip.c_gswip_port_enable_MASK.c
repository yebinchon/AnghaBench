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
struct TYPE_2__ {int addr; } ;
struct phy_device {TYPE_1__ mdio; } ;
struct gswip_priv {int dummy; } ;
struct dsa_switch {struct gswip_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GSWIP_BM_PCFG_CNTEN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int GSWIP_FDMA_PCTRL_EN ; 
 int GSWIP_FDMA_PCTRL_VLANMOD_BOTH ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  GSWIP_MDIO_MDC_CFG0 ; 
 int GSWIP_MDIO_PHY_ADDR_MASK ; 
 int GSWIP_MDIO_PHY_FCONRX_AUTO ; 
 int GSWIP_MDIO_PHY_FCONTX_AUTO ; 
 int GSWIP_MDIO_PHY_FDUP_AUTO ; 
 int GSWIP_MDIO_PHY_LINK_AUTO ; 
 int GSWIP_MDIO_PHY_SPEED_AUTO ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int GSWIP_SDMA_PCTRL_EN ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct dsa_switch*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct dsa_switch*,int) ; 
 int FUNC7 (struct gswip_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct gswip_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct gswip_priv*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct gswip_priv*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct gswip_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct dsa_switch *ds, int port,
			     struct phy_device *phydev)
{
	struct gswip_priv *priv = ds->priv;
	int err;

	if (!FUNC6(ds, port))
		return 0;

	if (!FUNC5(ds, port)) {
		err = FUNC7(priv, port, true);
		if (err)
			return err;
	}

	/* RMON Counter Enable for port */
	FUNC11(priv, GSWIP_BM_PCFG_CNTEN, FUNC1(port));

	/* enable port fetch/store dma & VLAN Modification */
	FUNC10(priv, 0, GSWIP_FDMA_PCTRL_EN |
				   GSWIP_FDMA_PCTRL_VLANMOD_BOTH,
			 FUNC2(port));
	FUNC10(priv, 0, GSWIP_SDMA_PCTRL_EN,
			  FUNC4(port));

	if (!FUNC5(ds, port)) {
		u32 macconf = GSWIP_MDIO_PHY_LINK_AUTO |
			      GSWIP_MDIO_PHY_SPEED_AUTO |
			      GSWIP_MDIO_PHY_FDUP_AUTO |
			      GSWIP_MDIO_PHY_FCONTX_AUTO |
			      GSWIP_MDIO_PHY_FCONRX_AUTO |
			      (phydev->mdio.addr & GSWIP_MDIO_PHY_ADDR_MASK);

		FUNC9(priv, macconf, FUNC3(port));
		/* Activate MDIO auto polling */
		FUNC8(priv, 0, FUNC0(port), GSWIP_MDIO_MDC_CFG0);
	}

	return 0;
}