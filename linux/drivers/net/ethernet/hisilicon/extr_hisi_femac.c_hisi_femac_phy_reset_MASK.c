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
struct hisi_femac_priv {int /*<<< orphan*/ * phy_reset_delays; int /*<<< orphan*/  phy_rst; } ;

/* Variables and functions */
 size_t POST_DELAY ; 
 size_t PRE_DELAY ; 
 size_t PULSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct hisi_femac_priv *priv)
{
	/* To make sure PHY hardware reset success,
	 * we must keep PHY in deassert state first and
	 * then complete the hardware reset operation
	 */
	FUNC2(priv->phy_rst);
	FUNC0(priv->phy_reset_delays[PRE_DELAY]);

	FUNC1(priv->phy_rst);
	/* delay some time to ensure reset ok,
	 * this depends on PHY hardware feature
	 */
	FUNC0(priv->phy_reset_delays[PULSE]);
	FUNC2(priv->phy_rst);
	/* delay some time to ensure later MDIO access */
	FUNC0(priv->phy_reset_delays[POST_DELAY]);
}