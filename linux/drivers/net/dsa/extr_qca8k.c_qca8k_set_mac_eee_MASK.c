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
typedef  int /*<<< orphan*/  u32 ;
struct qca8k_priv {int /*<<< orphan*/  reg_mutex; } ;
struct ethtool_eee {scalar_t__ eee_enabled; } ;
struct dsa_switch {scalar_t__ priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  QCA8K_REG_EEE_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct qca8k_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qca8k_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct dsa_switch *ds, int port, struct ethtool_eee *eee)
{
	struct qca8k_priv *priv = (struct qca8k_priv *)ds->priv;
	u32 lpi_en = FUNC0(port);
	u32 reg;

	FUNC1(&priv->reg_mutex);
	reg = FUNC3(priv, QCA8K_REG_EEE_CTRL);
	if (eee->eee_enabled)
		reg |= lpi_en;
	else
		reg &= ~lpi_en;
	FUNC4(priv, QCA8K_REG_EEE_CTRL, reg);
	FUNC2(&priv->reg_mutex);

	return 0;
}