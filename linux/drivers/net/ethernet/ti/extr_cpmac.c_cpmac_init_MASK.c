#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_8__ {char* name; int phy_mask; int /*<<< orphan*/  priv; int /*<<< orphan*/  id; int /*<<< orphan*/  (* reset ) (TYPE_1__*) ;int /*<<< orphan*/  write; int /*<<< orphan*/  read; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR7_REGS_MDIO ; 
 int /*<<< orphan*/  AR7_RESET_BIT_CPMAC_HI ; 
 int /*<<< orphan*/  AR7_RESET_BIT_CPMAC_LO ; 
 int /*<<< orphan*/  AR7_RESET_BIT_EPHY ; 
 int /*<<< orphan*/  CPMAC_MDIO_ALIVE ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  MII_BUS_ID_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  cpmac_driver ; 
 int /*<<< orphan*/  cpmac_mdio_read ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  cpmac_mdio_write ; 
 TYPE_1__* cpmac_mii ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int external_switch ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 

int FUNC15(void)
{
	u32 mask;
	int i, res;

	cpmac_mii = FUNC6();
	if (cpmac_mii == NULL)
		return -ENOMEM;

	cpmac_mii->name = "cpmac-mii";
	cpmac_mii->read = cpmac_mdio_read;
	cpmac_mii->write = cpmac_mdio_write;
	cpmac_mii->reset = cpmac_mdio_reset;

	cpmac_mii->priv = FUNC4(AR7_REGS_MDIO, 256);

	if (!cpmac_mii->priv) {
		FUNC12("Can't ioremap mdio registers\n");
		res = -ENXIO;
		goto fail_alloc;
	}

	/* FIXME: unhardcode gpio&reset bits */
	FUNC1(26);
	FUNC1(27);
	FUNC0(AR7_RESET_BIT_CPMAC_LO);
	FUNC0(AR7_RESET_BIT_CPMAC_HI);
	FUNC0(AR7_RESET_BIT_EPHY);

	cpmac_mii->reset(cpmac_mii);

	for (i = 0; i < 300; i++) {
		mask = FUNC3(cpmac_mii->priv, CPMAC_MDIO_ALIVE);
		if (mask)
			break;
		else
			FUNC10(10);
	}

	mask &= 0x7fffffff;
	if (mask & (mask - 1)) {
		external_switch = 1;
		mask = 0;
	}

	cpmac_mii->phy_mask = ~(mask | 0x80000000);
	FUNC13(cpmac_mii->id, MII_BUS_ID_SIZE, "cpmac-1");

	res = FUNC8(cpmac_mii);
	if (res)
		goto fail_mii;

	res = FUNC11(&cpmac_driver);
	if (res)
		goto fail_cpmac;

	return 0;

fail_cpmac:
	FUNC9(cpmac_mii);

fail_mii:
	FUNC5(cpmac_mii->priv);

fail_alloc:
	FUNC7(cpmac_mii);

	return res;
}