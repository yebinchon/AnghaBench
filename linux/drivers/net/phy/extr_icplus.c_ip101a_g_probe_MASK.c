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
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;
struct phy_device {struct ip101a_g_phy_priv* priv; TYPE_1__ mdio; } ;
struct ip101a_g_phy_priv {int /*<<< orphan*/  sel_intr32; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IP101GR_SEL_INTR32_INTR ; 
 int /*<<< orphan*/  IP101GR_SEL_INTR32_KEEP ; 
 int /*<<< orphan*/  IP101GR_SEL_INTR32_RXER ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 scalar_t__ FUNC1 (struct device*,char*) ; 
 struct ip101a_g_phy_priv* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct phy_device *phydev)
{
	struct device *dev = &phydev->mdio.dev;
	struct ip101a_g_phy_priv *priv;

	priv = FUNC2(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	/* Both functions (RX error and interrupt status) are sharing the same
	 * pin on the 32-pin IP101GR, so this is an exclusive choice.
	 */
	if (FUNC1(dev, "icplus,select-rx-error") &&
	    FUNC1(dev, "icplus,select-interrupt")) {
		FUNC0(dev,
			"RXER and INTR mode cannot be selected together\n");
		return -EINVAL;
	}

	if (FUNC1(dev, "icplus,select-rx-error"))
		priv->sel_intr32 = IP101GR_SEL_INTR32_RXER;
	else if (FUNC1(dev, "icplus,select-interrupt"))
		priv->sel_intr32 = IP101GR_SEL_INTR32_INTR;
	else
		priv->sel_intr32 = IP101GR_SEL_INTR32_KEEP;

	phydev->priv = priv;

	return 0;
}