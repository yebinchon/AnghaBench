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
typedef  scalar_t__ u32 ;
struct netsec_priv {scalar_t__ eeprom_base; } ;

/* Variables and functions */
 scalar_t__ NETSEC_EEPROM_HM_ME_ADDRESS_H ; 
 scalar_t__ NETSEC_EEPROM_HM_ME_ADDRESS_L ; 
 scalar_t__ NETSEC_EEPROM_HM_ME_SIZE ; 
 scalar_t__ NETSEC_EEPROM_MH_ME_ADDRESS_H ; 
 scalar_t__ NETSEC_EEPROM_MH_ME_ADDRESS_L ; 
 scalar_t__ NETSEC_EEPROM_MH_ME_SIZE ; 
 scalar_t__ NETSEC_EEPROM_PKT_ME_ADDRESS ; 
 scalar_t__ NETSEC_EEPROM_PKT_ME_SIZE ; 
 int /*<<< orphan*/  NETSEC_REG_DMAC_HM_CMD_BUF ; 
 int /*<<< orphan*/  NETSEC_REG_DMAC_MH_CMD_BUF ; 
 int /*<<< orphan*/  NETSEC_REG_PKT_CMD_BUF ; 
 int FUNC0 (struct netsec_priv*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct netsec_priv *priv)
{
	u32 addr_h, addr_l, size;
	int err;

	addr_h = FUNC1(priv->eeprom_base + NETSEC_EEPROM_HM_ME_ADDRESS_H);
	addr_l = FUNC1(priv->eeprom_base + NETSEC_EEPROM_HM_ME_ADDRESS_L);
	size = FUNC1(priv->eeprom_base + NETSEC_EEPROM_HM_ME_SIZE);
	err = FUNC0(priv, NETSEC_REG_DMAC_HM_CMD_BUF,
					      addr_h, addr_l, size);
	if (err)
		return err;

	addr_h = FUNC1(priv->eeprom_base + NETSEC_EEPROM_MH_ME_ADDRESS_H);
	addr_l = FUNC1(priv->eeprom_base + NETSEC_EEPROM_MH_ME_ADDRESS_L);
	size = FUNC1(priv->eeprom_base + NETSEC_EEPROM_MH_ME_SIZE);
	err = FUNC0(priv, NETSEC_REG_DMAC_MH_CMD_BUF,
					      addr_h, addr_l, size);
	if (err)
		return err;

	addr_h = 0;
	addr_l = FUNC1(priv->eeprom_base + NETSEC_EEPROM_PKT_ME_ADDRESS);
	size = FUNC1(priv->eeprom_base + NETSEC_EEPROM_PKT_ME_SIZE);
	err = FUNC0(priv, NETSEC_REG_PKT_CMD_BUF,
					      addr_h, addr_l, size);
	if (err)
		return err;

	return 0;
}