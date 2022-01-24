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
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct alx_hw {int dummy; } ;

/* Variables and functions */
 int ADVERTISED_100baseT_Full ; 
 int ADVERTISED_100baseT_Half ; 
 int ADVERTISED_10baseT_Full ; 
 int ADVERTISED_Asym_Pause ; 
 int ADVERTISED_Autoneg ; 
 int ADVERTISED_Pause ; 
 int ADVERTISE_CSMA ; 
 int /*<<< orphan*/  ALX_DRV ; 
 int /*<<< orphan*/  ALX_DRV_PHY ; 
 int ALX_FC_ANEG ; 
 int ALX_FC_RX ; 
 int ALX_FC_TX ; 
 int /*<<< orphan*/  ALX_MII_DBG_ADDR ; 
 int ALX_PHY_INITED ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int BMCR_ANENABLE ; 
 int BMCR_ANRESTART ; 
 int BMCR_FULLDPLX ; 
 int BMCR_RESET ; 
 int BMCR_SPEED100 ; 
 int EBUSY ; 
 int /*<<< orphan*/  MII_ADVERTISE ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int /*<<< orphan*/  MII_CTRL1000 ; 
 scalar_t__ FUNC1 (struct alx_hw*) ; 
 int FUNC2 (struct alx_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct alx_hw*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct alx_hw*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct alx_hw*,int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 

int FUNC8(struct alx_hw *hw, u32 ethadv, u8 flowctrl)
{
	u16 adv, giga, cr;
	u32 val;
	int err = 0;

	FUNC4(hw, ALX_MII_DBG_ADDR, 0);
	val = FUNC2(hw, ALX_DRV);
	FUNC0(val, ALX_DRV_PHY, 0);

	if (ethadv & ADVERTISED_Autoneg) {
		adv = ADVERTISE_CSMA;
		adv |= FUNC6(ethadv);

		if (flowctrl & ALX_FC_ANEG) {
			if (flowctrl & ALX_FC_RX) {
				adv |= ADVERTISED_Pause;
				if (!(flowctrl & ALX_FC_TX))
					adv |= ADVERTISED_Asym_Pause;
			} else if (flowctrl & ALX_FC_TX) {
				adv |= ADVERTISED_Asym_Pause;
			}
		}
		giga = 0;
		if (FUNC1(hw))
			giga = FUNC7(ethadv);

		cr = BMCR_RESET | BMCR_ANENABLE | BMCR_ANRESTART;

		if (FUNC4(hw, MII_ADVERTISE, adv) ||
		    FUNC4(hw, MII_CTRL1000, giga) ||
		    FUNC4(hw, MII_BMCR, cr))
			err = -EBUSY;
	} else {
		cr = BMCR_RESET;
		if (ethadv == ADVERTISED_100baseT_Half ||
		    ethadv == ADVERTISED_100baseT_Full)
			cr |= BMCR_SPEED100;
		if (ethadv == ADVERTISED_10baseT_Full ||
		    ethadv == ADVERTISED_100baseT_Full)
			cr |= BMCR_FULLDPLX;

		err = FUNC4(hw, MII_BMCR, cr);
	}

	if (!err) {
		FUNC4(hw, ALX_MII_DBG_ADDR, ALX_PHY_INITED);
		val |= FUNC5(hw, ethadv);
	}

	FUNC3(hw, ALX_DRV, val);

	return err;
}