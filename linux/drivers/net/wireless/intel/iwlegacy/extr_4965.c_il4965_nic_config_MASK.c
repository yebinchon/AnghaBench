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
typedef  int /*<<< orphan*/  u16 ;
struct il_priv {int /*<<< orphan*/  lock; struct il_eeprom_calib_info* calib_info; } ;
struct il_eeprom_calib_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_HW_IF_CONFIG_REG ; 
 int CSR_HW_IF_CONFIG_REG_BIT_MAC_SI ; 
 int CSR_HW_IF_CONFIG_REG_BIT_RADIO_SI ; 
 int /*<<< orphan*/  EEPROM_4965_CALIB_TXPOWER_OFFSET ; 
 int EEPROM_4965_RF_CFG_TYPE_MAX ; 
 int /*<<< orphan*/  EEPROM_RADIO_CONFIG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct il_priv*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct il_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct il_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

void
FUNC8(struct il_priv *il)
{
	unsigned long flags;
	u16 radio_cfg;

	FUNC6(&il->lock, flags);

	radio_cfg = FUNC3(il, EEPROM_RADIO_CONFIG);

	/* write radio config values to register */
	if (FUNC2(radio_cfg) == EEPROM_4965_RF_CFG_TYPE_MAX)
		FUNC5(il, CSR_HW_IF_CONFIG_REG,
			   FUNC2(radio_cfg) |
			   FUNC1(radio_cfg) |
			   FUNC0(radio_cfg));

	/* set CSR_HW_CONFIG_REG for uCode use */
	FUNC5(il, CSR_HW_IF_CONFIG_REG,
		   CSR_HW_IF_CONFIG_REG_BIT_RADIO_SI |
		   CSR_HW_IF_CONFIG_REG_BIT_MAC_SI);

	il->calib_info =
	    (struct il_eeprom_calib_info *)
	    FUNC4(il, EEPROM_4965_CALIB_TXPOWER_OFFSET);

	FUNC7(&il->lock, flags);
}