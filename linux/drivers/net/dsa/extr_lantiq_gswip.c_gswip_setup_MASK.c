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
struct gswip_priv {int /*<<< orphan*/  dev; TYPE_1__* hw_info; } ;
struct dsa_switch {struct gswip_priv* priv; } ;
struct TYPE_2__ {unsigned int cpu_port; int max_ports; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  GSWIP_BM_QUEUE_GCTRL ; 
 int /*<<< orphan*/  GSWIP_BM_QUEUE_GCTRL_GL_MOD ; 
 int /*<<< orphan*/  GSWIP_FDMA_PCTRL_STEN ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  GSWIP_MAC_CTRL_2_MLEN ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  GSWIP_MAC_FLEN ; 
 int /*<<< orphan*/  GSWIP_MDIO_GLOB ; 
 int GSWIP_MDIO_GLOB_ENABLE ; 
 int /*<<< orphan*/  GSWIP_MDIO_MDC_CFG0 ; 
 int /*<<< orphan*/  GSWIP_MDIO_MDC_CFG1 ; 
 int /*<<< orphan*/  GSWIP_MII_CFG_EN ; 
 int /*<<< orphan*/  GSWIP_PCE_GCTRL_0 ; 
 int /*<<< orphan*/  GSWIP_PCE_GCTRL_0_MTFL ; 
 int /*<<< orphan*/  GSWIP_PCE_GCTRL_0_VLAN ; 
 int /*<<< orphan*/  GSWIP_PCE_PCTRL_0_INGRESS ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  GSWIP_PCE_PMAP1 ; 
 int /*<<< orphan*/  GSWIP_PCE_PMAP2 ; 
 int /*<<< orphan*/  GSWIP_PCE_PMAP3 ; 
 int /*<<< orphan*/  GSWIP_SWRES ; 
 scalar_t__ GSWIP_SWRES_R0 ; 
 scalar_t__ VLAN_ETH_FRAME_LEN ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct gswip_priv*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct gswip_priv*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct gswip_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct gswip_priv*) ; 
 int /*<<< orphan*/  FUNC9 (struct dsa_switch*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct dsa_switch*,unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct dsa_switch*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct gswip_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct gswip_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct gswip_priv*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int,int) ; 

__attribute__((used)) static int FUNC16(struct dsa_switch *ds)
{
	struct gswip_priv *priv = ds->priv;
	unsigned int cpu_port = priv->hw_info->cpu_port;
	int i;
	int err;

	FUNC14(priv, GSWIP_SWRES_R0, GSWIP_SWRES);
	FUNC15(5000, 10000);
	FUNC14(priv, 0, GSWIP_SWRES);

	/* disable port fetch/store dma on all ports */
	for (i = 0; i < priv->hw_info->max_ports; i++) {
		FUNC9(ds, i);
		FUNC11(ds, i, false);
	}

	/* enable Switch */
	FUNC5(priv, 0, GSWIP_MDIO_GLOB_ENABLE, GSWIP_MDIO_GLOB);

	err = FUNC8(priv);
	if (err) {
		FUNC4(priv->dev, "writing PCE microcode failed, %i", err);
		return err;
	}

	/* Default unknown Broadcast/Multicast/Unicast port maps */
	FUNC14(priv, FUNC0(cpu_port), GSWIP_PCE_PMAP1);
	FUNC14(priv, FUNC0(cpu_port), GSWIP_PCE_PMAP2);
	FUNC14(priv, FUNC0(cpu_port), GSWIP_PCE_PMAP3);

	/* disable PHY auto polling */
	FUNC6(priv, 0x0, GSWIP_MDIO_MDC_CFG0);
	/* Configure the MDIO Clock 2.5 MHz */
	FUNC5(priv, 0xff, 0x09, GSWIP_MDIO_MDC_CFG1);

	/* Disable the xMII link */
	FUNC7(priv, GSWIP_MII_CFG_EN, 0, 0);
	FUNC7(priv, GSWIP_MII_CFG_EN, 0, 1);
	FUNC7(priv, GSWIP_MII_CFG_EN, 0, 5);

	/* enable special tag insertion on cpu port */
	FUNC12(priv, 0, GSWIP_FDMA_PCTRL_STEN,
			  FUNC1(cpu_port));

	/* accept special tag in ingress direction */
	FUNC12(priv, 0, GSWIP_PCE_PCTRL_0_INGRESS,
			  FUNC3(cpu_port));

	FUNC12(priv, 0, GSWIP_MAC_CTRL_2_MLEN,
			  FUNC2(cpu_port));
	FUNC14(priv, VLAN_ETH_FRAME_LEN + 8, GSWIP_MAC_FLEN);
	FUNC12(priv, 0, GSWIP_BM_QUEUE_GCTRL_GL_MOD,
			  GSWIP_BM_QUEUE_GCTRL);

	/* VLAN aware Switching */
	FUNC12(priv, 0, GSWIP_PCE_GCTRL_0_VLAN, GSWIP_PCE_GCTRL_0);

	/* Flush MAC Table */
	FUNC12(priv, 0, GSWIP_PCE_GCTRL_0_MTFL, GSWIP_PCE_GCTRL_0);

	err = FUNC13(priv, GSWIP_PCE_GCTRL_0,
				     GSWIP_PCE_GCTRL_0_MTFL);
	if (err) {
		FUNC4(priv->dev, "MAC flushing didn't finish\n");
		return err;
	}

	FUNC10(ds, cpu_port, NULL);
	return 0;
}