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
struct stmmac_priv {int tx_path_in_lpi_mode; int /*<<< orphan*/  eee_ctrl_timer; int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct stmmac_priv*,int /*<<< orphan*/ ) ; 

void FUNC2(struct stmmac_priv *priv)
{
	FUNC1(priv, priv->hw);
	FUNC0(&priv->eee_ctrl_timer);
	priv->tx_path_in_lpi_mode = false;
}