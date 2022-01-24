#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct device {int dummy; } ;
struct bcmgenet_priv {scalar_t__ phy_interface; TYPE_2__* hw_params; int /*<<< orphan*/  dev; TYPE_1__* pdev; } ;
struct TYPE_4__ {int bp_in_mask; int flags; int /*<<< orphan*/  bp_in_en_shift; } ;
struct TYPE_3__ {struct device dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int ENET_MAX_MTU_SIZE ; 
 int GENET_HAS_MDIO_INTR ; 
 int /*<<< orphan*/  FUNC1 (struct bcmgenet_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct bcmgenet_priv*) ; 
 int /*<<< orphan*/  INTRL2_CPU_MASK_CLEAR ; 
 int MIB_RESET_RUNT ; 
 int MIB_RESET_RX ; 
 int MIB_RESET_TX ; 
 scalar_t__ PHY_INTERFACE_MODE_MOCA ; 
 int RBUF_ALIGN_2B ; 
 int /*<<< orphan*/  RBUF_CTRL ; 
 int /*<<< orphan*/  RBUF_TBUF_SIZE_CTRL ; 
 int UMAC_IRQ_MDIO_DONE ; 
 int UMAC_IRQ_MDIO_ERROR ; 
 int /*<<< orphan*/  UMAC_MAX_FRAME_LEN ; 
 int /*<<< orphan*/  UMAC_MIB_CTRL ; 
 int FUNC3 (struct bcmgenet_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct bcmgenet_priv*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bcmgenet_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct bcmgenet_priv*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct bcmgenet_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct bcmgenet_priv*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct bcmgenet_priv*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct device*,char*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct bcmgenet_priv*) ; 

__attribute__((used)) static void FUNC13(struct bcmgenet_priv *priv)
{
	struct device *kdev = &priv->pdev->dev;
	u32 reg;
	u32 int0_enable = 0;

	FUNC10(&priv->pdev->dev, "bcmgenet: init_umac\n");

	FUNC12(priv);

	/* clear tx/rx counter */
	FUNC9(priv,
			     MIB_RESET_RX | MIB_RESET_TX | MIB_RESET_RUNT,
			     UMAC_MIB_CTRL);
	FUNC9(priv, 0, UMAC_MIB_CTRL);

	FUNC9(priv, ENET_MAX_MTU_SIZE, UMAC_MAX_FRAME_LEN);

	/* init rx registers, enable ip header optimization */
	reg = FUNC7(priv, RBUF_CTRL);
	reg |= RBUF_ALIGN_2B;
	FUNC8(priv, reg, RBUF_CTRL);

	if (!FUNC1(priv) && !FUNC2(priv))
		FUNC8(priv, 1, RBUF_TBUF_SIZE_CTRL);

	FUNC5(priv);

	/* Configure backpressure vectors for MoCA */
	if (priv->phy_interface == PHY_INTERFACE_MODE_MOCA) {
		reg = FUNC3(priv);
		reg |= FUNC0(priv->hw_params->bp_in_en_shift);

		/* bp_mask: back pressure mask */
		if (FUNC11(priv->dev))
			reg |= priv->hw_params->bp_in_mask;
		else
			reg &= ~priv->hw_params->bp_in_mask;
		FUNC4(priv, reg);
	}

	/* Enable MDIO interrupts on GENET v3+ */
	if (priv->hw_params->flags & GENET_HAS_MDIO_INTR)
		int0_enable |= (UMAC_IRQ_MDIO_DONE | UMAC_IRQ_MDIO_ERROR);

	FUNC6(priv, int0_enable, INTRL2_CPU_MASK_CLEAR);

	FUNC10(kdev, "done init umac\n");
}