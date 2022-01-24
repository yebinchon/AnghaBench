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
struct emac_board_info {int /*<<< orphan*/  lock; scalar_t__ membase; } ;

/* Variables and functions */
 scalar_t__ EMAC_CTL_REG ; 
 unsigned int EMAC_CTL_RESET ; 
 unsigned int EMAC_CTL_RX_EN ; 
 unsigned int EMAC_CTL_TX_EN ; 
 scalar_t__ EMAC_INT_CTL_REG ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct emac_board_info* FUNC2 (struct net_device*) ; 
 unsigned int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct net_device *dev)
{
	struct emac_board_info *db = FUNC2(dev);
	unsigned long flags;
	unsigned int reg_val;

	FUNC4(&db->lock, flags);

	FUNC1(dev);
	FUNC0(dev);

	/* enable RX/TX */
	reg_val = FUNC3(db->membase + EMAC_CTL_REG);
	FUNC6(reg_val | EMAC_CTL_RESET | EMAC_CTL_TX_EN | EMAC_CTL_RX_EN,
		db->membase + EMAC_CTL_REG);

	/* enable RX/TX0/RX Hlevel interrup */
	reg_val = FUNC3(db->membase + EMAC_INT_CTL_REG);
	reg_val |= (0xf << 0) | (0x01 << 8);
	FUNC6(reg_val, db->membase + EMAC_INT_CTL_REG);

	FUNC5(&db->lock, flags);
}