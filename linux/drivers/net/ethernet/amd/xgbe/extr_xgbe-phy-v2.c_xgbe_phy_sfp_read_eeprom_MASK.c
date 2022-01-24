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
typedef  scalar_t__ u8 ;
struct xgbe_sfp_eeprom {int /*<<< orphan*/ * extd; int /*<<< orphan*/ * base; } ;
struct xgbe_prv_data {int /*<<< orphan*/  netdev; int /*<<< orphan*/  dev; struct xgbe_phy_data* phy_data; } ;
struct xgbe_phy_data {int sfp_changed; int /*<<< orphan*/  sfp_eeprom; } ;
typedef  int /*<<< orphan*/  sfp_eeprom ;
typedef  int /*<<< orphan*/  eeprom_addr ;

/* Variables and functions */
 int EINVAL ; 
 size_t XGBE_SFP_BASE_CC ; 
 size_t XGBE_SFP_EXTD_CC ; 
 int /*<<< orphan*/  XGBE_SFP_SERIAL_ID_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,struct xgbe_sfp_eeprom*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct xgbe_sfp_eeprom*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct xgbe_prv_data*) ; 
 int FUNC6 (struct xgbe_prv_data*,int /*<<< orphan*/ ,scalar_t__*,int,struct xgbe_sfp_eeprom*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct xgbe_prv_data*,struct xgbe_sfp_eeprom*) ; 
 int FUNC8 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC9 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC11(struct xgbe_prv_data *pdata)
{
	struct xgbe_phy_data *phy_data = pdata->phy_data;
	struct xgbe_sfp_eeprom sfp_eeprom;
	u8 eeprom_addr;
	int ret;

	ret = FUNC8(pdata);
	if (ret) {
		FUNC0(pdata->dev, "%s: I2C error setting SFP MUX\n",
			     FUNC3(pdata->netdev));
		return ret;
	}

	/* Read the SFP serial ID eeprom */
	eeprom_addr = 0;
	ret = FUNC6(pdata, XGBE_SFP_SERIAL_ID_ADDRESS,
				&eeprom_addr, sizeof(eeprom_addr),
				&sfp_eeprom, sizeof(sfp_eeprom));
	if (ret) {
		FUNC0(pdata->dev, "%s: I2C error reading SFP EEPROM\n",
			     FUNC3(pdata->netdev));
		goto put;
	}

	/* Validate the contents read */
	if (!FUNC10(sfp_eeprom.base[XGBE_SFP_BASE_CC],
					sfp_eeprom.base,
					sizeof(sfp_eeprom.base) - 1)) {
		ret = -EINVAL;
		goto put;
	}

	if (!FUNC10(sfp_eeprom.extd[XGBE_SFP_EXTD_CC],
					sfp_eeprom.extd,
					sizeof(sfp_eeprom.extd) - 1)) {
		ret = -EINVAL;
		goto put;
	}

	/* Check for an added or changed SFP */
	if (FUNC1(&phy_data->sfp_eeprom, &sfp_eeprom, sizeof(sfp_eeprom))) {
		phy_data->sfp_changed = 1;

		if (FUNC4(pdata))
			FUNC7(pdata, &sfp_eeprom);

		FUNC2(&phy_data->sfp_eeprom, &sfp_eeprom, sizeof(sfp_eeprom));

		FUNC5(pdata);
	} else {
		phy_data->sfp_changed = 0;
	}

put:
	FUNC9(pdata);

	return ret;
}