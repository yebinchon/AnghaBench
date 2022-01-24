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
struct emac_board_info {scalar_t__ speed; scalar_t__ membase; } ;

/* Variables and functions */
 scalar_t__ EMAC_MAC_SUPP_REG ; 
 scalar_t__ SPEED_100 ; 
 struct emac_board_info* FUNC0 (struct net_device*) ; 
 unsigned int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev)
{
	struct emac_board_info *db = FUNC0(dev);
	unsigned int reg_val;

	/* set EMAC SPEED, depend on PHY  */
	reg_val = FUNC1(db->membase + EMAC_MAC_SUPP_REG);
	reg_val &= ~(0x1 << 8);
	if (db->speed == SPEED_100)
		reg_val |= 1 << 8;
	FUNC2(reg_val, db->membase + EMAC_MAC_SUPP_REG);
}