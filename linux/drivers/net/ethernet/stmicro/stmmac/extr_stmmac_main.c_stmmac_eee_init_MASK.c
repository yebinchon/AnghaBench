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
struct TYPE_3__ {int /*<<< orphan*/  eee; } ;
struct stmmac_priv {int tx_lpi_timer; int /*<<< orphan*/  dev; int /*<<< orphan*/  lock; TYPE_2__* hw; int /*<<< orphan*/  eee_ctrl_timer; scalar_t__ eee_enabled; scalar_t__ eee_active; TYPE_1__ dma_cap; } ;
struct TYPE_4__ {scalar_t__ pcs; } ;

/* Variables and functions */
 int /*<<< orphan*/  STMMAC_DEFAULT_LIT_LS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ STMMAC_PCS_RGMII ; 
 scalar_t__ STMMAC_PCS_RTBI ; 
 scalar_t__ STMMAC_PCS_TBI ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  eee_timer ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stmmac_eee_ctrl_timer ; 
 int /*<<< orphan*/  FUNC6 (struct stmmac_priv*,TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC8(struct stmmac_priv *priv)
{
	int tx_lpi_timer = priv->tx_lpi_timer;

	/* Using PCS we cannot dial with the phy registers at this stage
	 * so we do not support extra feature like EEE.
	 */
	if ((priv->hw->pcs == STMMAC_PCS_RGMII) ||
	    (priv->hw->pcs == STMMAC_PCS_TBI) ||
	    (priv->hw->pcs == STMMAC_PCS_RTBI))
		return false;

	/* Check if MAC core supports the EEE feature. */
	if (!priv->dma_cap.eee)
		return false;

	FUNC3(&priv->lock);

	/* Check if it needs to be deactivated */
	if (!priv->eee_active) {
		if (priv->eee_enabled) {
			FUNC5(priv->dev, "disable EEE\n");
			FUNC1(&priv->eee_ctrl_timer);
			FUNC6(priv, priv->hw, 0, tx_lpi_timer);
		}
		FUNC4(&priv->lock);
		return false;
	}

	if (priv->eee_active && !priv->eee_enabled) {
		FUNC7(&priv->eee_ctrl_timer, stmmac_eee_ctrl_timer, 0);
		FUNC2(&priv->eee_ctrl_timer, FUNC0(eee_timer));
		FUNC6(priv, priv->hw, STMMAC_DEFAULT_LIT_LS,
				     tx_lpi_timer);
	}

	FUNC4(&priv->lock);
	FUNC5(priv->dev, "Energy-Efficient Ethernet initialized\n");
	return true;
}