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
struct net_device {int dummy; } ;
struct emac_board_info {scalar_t__ membase; } ;

/* Variables and functions */
 scalar_t__ EMAC_CTL_REG ; 
 unsigned int EMAC_CTL_RESET ; 
 unsigned int EMAC_CTL_RX_EN ; 
 unsigned int EMAC_CTL_TX_EN ; 
 scalar_t__ EMAC_INT_CTL_REG ; 
 scalar_t__ EMAC_INT_STA_REG ; 
 struct emac_board_info* FUNC0 (struct net_device*) ; 
 unsigned int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev)
{
	unsigned int reg_val;
	struct emac_board_info *db = FUNC0(dev);

	/* Disable all interrupt */
	FUNC2(0, db->membase + EMAC_INT_CTL_REG);

	/* clear interrupt status */
	reg_val = FUNC1(db->membase + EMAC_INT_STA_REG);
	FUNC2(reg_val, db->membase + EMAC_INT_STA_REG);

	/* Disable RX/TX */
	reg_val = FUNC1(db->membase + EMAC_CTL_REG);
	reg_val &= ~(EMAC_CTL_TX_EN | EMAC_CTL_RX_EN | EMAC_CTL_RESET);
	FUNC2(reg_val, db->membase + EMAC_CTL_REG);
}