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
struct dsa_switch {int dummy; } ;
struct bcm_sf2_priv {int dummy; } ;

/* Variables and functions */
 int CK25_DIS ; 
 int EXT_PWR_DOWN ; 
 int IDDQ_BIAS ; 
 int IDDQ_GLOBAL_PWR ; 
 int PHY_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_SPHY_CNTRL ; 
 int SPDLNK_SRC_SEL ; 
 struct bcm_sf2_priv* FUNC1 (struct dsa_switch*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct bcm_sf2_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bcm_sf2_priv*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct dsa_switch *ds, bool enable)
{
	struct bcm_sf2_priv *priv = FUNC1(ds);
	u32 reg;

	reg = FUNC3(priv, REG_SPHY_CNTRL);
	if (enable) {
		reg |= PHY_RESET;
		reg &= ~(EXT_PWR_DOWN | IDDQ_BIAS | IDDQ_GLOBAL_PWR | CK25_DIS);
		FUNC4(priv, reg, REG_SPHY_CNTRL);
		FUNC5(21);
		reg = FUNC3(priv, REG_SPHY_CNTRL);
		reg &= ~PHY_RESET;
	} else {
		reg |= EXT_PWR_DOWN | IDDQ_BIAS | PHY_RESET;
		FUNC4(priv, reg, REG_SPHY_CNTRL);
		FUNC2(1);
		reg |= CK25_DIS;
	}
	FUNC4(priv, reg, REG_SPHY_CNTRL);

	/* Use PHY-driven LED signaling */
	if (!enable) {
		reg = FUNC3(priv, FUNC0(0));
		reg |= SPDLNK_SRC_SEL;
		FUNC4(priv, reg, FUNC0(0));
	}
}