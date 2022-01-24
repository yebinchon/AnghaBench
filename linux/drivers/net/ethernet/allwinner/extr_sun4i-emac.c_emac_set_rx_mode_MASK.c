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
struct net_device {int flags; } ;
struct emac_board_info {scalar_t__ membase; } ;

/* Variables and functions */
 unsigned int EMAC_RX_CTL_ACCEPT_BROADCAST_EN ; 
 unsigned int EMAC_RX_CTL_ACCEPT_MULTICAST_EN ; 
 unsigned int EMAC_RX_CTL_ACCEPT_UNICAST_EN ; 
 unsigned int EMAC_RX_CTL_DA_FILTER_EN ; 
 unsigned int EMAC_RX_CTL_PASS_ALL_EN ; 
 unsigned int EMAC_RX_CTL_PASS_LEN_OOR_EN ; 
 scalar_t__ EMAC_RX_CTL_REG ; 
 int IFF_PROMISC ; 
 struct emac_board_info* FUNC0 (struct net_device*) ; 
 unsigned int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct net_device *ndev)
{
	struct emac_board_info *db = FUNC0(ndev);
	unsigned int reg_val;

	/* set up RX */
	reg_val = FUNC1(db->membase + EMAC_RX_CTL_REG);

	if (ndev->flags & IFF_PROMISC)
		reg_val |= EMAC_RX_CTL_PASS_ALL_EN;
	else
		reg_val &= ~EMAC_RX_CTL_PASS_ALL_EN;

	FUNC2(reg_val | EMAC_RX_CTL_PASS_LEN_OOR_EN |
		EMAC_RX_CTL_ACCEPT_UNICAST_EN | EMAC_RX_CTL_DA_FILTER_EN |
		EMAC_RX_CTL_ACCEPT_MULTICAST_EN |
		EMAC_RX_CTL_ACCEPT_BROADCAST_EN,
		db->membase + EMAC_RX_CTL_REG);
}