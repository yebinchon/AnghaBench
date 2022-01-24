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
struct net_device {int* dev_addr; } ;
struct emac_board_info {scalar_t__ membase; } ;

/* Variables and functions */
 scalar_t__ EMAC_INT_CTL_REG ; 
 scalar_t__ EMAC_INT_STA_REG ; 
 scalar_t__ EMAC_MAC_A0_REG ; 
 scalar_t__ EMAC_MAC_A1_REG ; 
 scalar_t__ EMAC_MAC_CTL0_REG ; 
 unsigned int EMAC_MAC_CTL0_SOFT_RESET ; 
 scalar_t__ EMAC_MAC_MCFG_REG ; 
 scalar_t__ EMAC_RX_CTL_REG ; 
 scalar_t__ EMAC_RX_FBC_REG ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct emac_board_info* FUNC2 (struct net_device*) ; 
 unsigned int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static unsigned int FUNC6(struct net_device *ndev)
{
	struct emac_board_info *db = FUNC2(ndev);
	unsigned int reg_val;

	/* initial EMAC */
	/* flush RX FIFO */
	reg_val = FUNC3(db->membase + EMAC_RX_CTL_REG);
	reg_val |= 0x8;
	FUNC5(reg_val, db->membase + EMAC_RX_CTL_REG);
	FUNC4(1);

	/* initial MAC */
	/* soft reset MAC */
	reg_val = FUNC3(db->membase + EMAC_MAC_CTL0_REG);
	reg_val &= ~EMAC_MAC_CTL0_SOFT_RESET;
	FUNC5(reg_val, db->membase + EMAC_MAC_CTL0_REG);

	/* set MII clock */
	reg_val = FUNC3(db->membase + EMAC_MAC_MCFG_REG);
	reg_val &= (~(0xf << 2));
	reg_val |= (0xD << 2);
	FUNC5(reg_val, db->membase + EMAC_MAC_MCFG_REG);

	/* clear RX counter */
	FUNC5(0x0, db->membase + EMAC_RX_FBC_REG);

	/* disable all interrupt and clear interrupt status */
	FUNC5(0, db->membase + EMAC_INT_CTL_REG);
	reg_val = FUNC3(db->membase + EMAC_INT_STA_REG);
	FUNC5(reg_val, db->membase + EMAC_INT_STA_REG);

	FUNC4(1);

	/* set up EMAC */
	FUNC0(ndev);

	/* set mac_address to chip */
	FUNC5(ndev->dev_addr[0] << 16 | ndev->dev_addr[1] << 8 | ndev->
	       dev_addr[2], db->membase + EMAC_MAC_A1_REG);
	FUNC5(ndev->dev_addr[3] << 16 | ndev->dev_addr[4] << 8 | ndev->
	       dev_addr[5], db->membase + EMAC_MAC_A0_REG);

	FUNC1(1);

	return 0;
}