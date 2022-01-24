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
typedef  int u32 ;
struct net_device {int dummy; } ;
struct bcmgenet_priv {int dummy; } ;

/* Variables and functions */
 int EXT_CFG_IDDQ_BIAS ; 
 int EXT_CFG_PWR_DOWN ; 
 int EXT_CK25_DIS ; 
 int /*<<< orphan*/  EXT_GPHY_CTRL ; 
 int EXT_GPHY_RESET ; 
 scalar_t__ FUNC0 (struct bcmgenet_priv*) ; 
 int FUNC1 (struct bcmgenet_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bcmgenet_priv*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct bcmgenet_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

void FUNC6(struct net_device *dev, bool enable)
{
	struct bcmgenet_priv *priv = FUNC4(dev);
	u32 reg = 0;

	/* EXT_GPHY_CTRL is only valid for GENETv4 and onward */
	if (FUNC0(priv)) {
		reg = FUNC1(priv, EXT_GPHY_CTRL);
		if (enable) {
			reg &= ~EXT_CK25_DIS;
			FUNC2(priv, reg, EXT_GPHY_CTRL);
			FUNC3(1);

			reg &= ~(EXT_CFG_IDDQ_BIAS | EXT_CFG_PWR_DOWN);
			reg |= EXT_GPHY_RESET;
			FUNC2(priv, reg, EXT_GPHY_CTRL);
			FUNC3(1);

			reg &= ~EXT_GPHY_RESET;
		} else {
			reg |= EXT_CFG_IDDQ_BIAS | EXT_CFG_PWR_DOWN |
			       EXT_GPHY_RESET;
			FUNC2(priv, reg, EXT_GPHY_CTRL);
			FUNC3(1);
			reg |= EXT_CK25_DIS;
		}
		FUNC2(priv, reg, EXT_GPHY_CTRL);
		FUNC5(60);
	} else {
		FUNC3(1);
	}
}