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
struct net_device {int dummy; } ;
struct TYPE_4__ {int eee_enabled; int eee_active; } ;
struct bcmgenet_priv {int clk_eee_enabled; int base; TYPE_2__ eee; int /*<<< orphan*/  clk_eee; TYPE_1__* hw_params; } ;
struct TYPE_3__ {int tbuf_offset; } ;

/* Variables and functions */
 int EEE_EN ; 
 int RBUF_EEE_EN ; 
 int /*<<< orphan*/  RBUF_ENERGY_CTRL ; 
 int RBUF_PM_EN ; 
 int TBUF_EEE_EN ; 
 int TBUF_ENERGY_CTRL ; 
 int TBUF_PM_EN ; 
 int /*<<< orphan*/  UMAC_EEE_CTRL ; 
 int FUNC0 (struct bcmgenet_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bcmgenet_priv*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int FUNC3 (struct bcmgenet_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bcmgenet_priv*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct bcmgenet_priv* FUNC8 (struct net_device*) ; 

__attribute__((used)) static void FUNC9(struct net_device *dev, bool enable)
{
	struct bcmgenet_priv *priv = FUNC8(dev);
	u32 off = priv->hw_params->tbuf_offset + TBUF_ENERGY_CTRL;
	u32 reg;

	if (enable && !priv->clk_eee_enabled) {
		FUNC7(priv->clk_eee);
		priv->clk_eee_enabled = true;
	}

	reg = FUNC3(priv, UMAC_EEE_CTRL);
	if (enable)
		reg |= EEE_EN;
	else
		reg &= ~EEE_EN;
	FUNC4(priv, reg, UMAC_EEE_CTRL);

	/* Enable EEE and switch to a 27Mhz clock automatically */
	reg = FUNC2(priv->base + off);
	if (enable)
		reg |= TBUF_EEE_EN | TBUF_PM_EN;
	else
		reg &= ~(TBUF_EEE_EN | TBUF_PM_EN);
	FUNC5(reg, priv->base + off);

	/* Do the same for thing for RBUF */
	reg = FUNC0(priv, RBUF_ENERGY_CTRL);
	if (enable)
		reg |= RBUF_EEE_EN | RBUF_PM_EN;
	else
		reg &= ~(RBUF_EEE_EN | RBUF_PM_EN);
	FUNC1(priv, reg, RBUF_ENERGY_CTRL);

	if (!enable && priv->clk_eee_enabled) {
		FUNC6(priv->clk_eee);
		priv->clk_eee_enabled = false;
	}

	priv->eee.eee_enabled = enable;
	priv->eee.eee_active = enable;
}