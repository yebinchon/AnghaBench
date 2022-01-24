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
struct link_vars {int dummy; } ;
struct link_params {int /*<<< orphan*/  shmem_base; int /*<<< orphan*/  port; struct bnx2x* bp; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  MDIO_PMA_DEVAD ; 
 int /*<<< orphan*/  MDIO_PMA_REG_CMU_PLL_BYPASS ; 
 int /*<<< orphan*/  MDIO_PMA_REG_CTRL ; 
 int /*<<< orphan*/  MDIO_PMA_REG_MISC_CTRL ; 
 int /*<<< orphan*/  MDIO_PMA_REG_PHY_IDENTIFIER ; 
 int /*<<< orphan*/  MDIO_WIS_DEVAD ; 
 int /*<<< orphan*/  MDIO_WIS_REG_LASI_CNTL ; 
 int /*<<< orphan*/  MISC_REGISTERS_GPIO_2 ; 
 int /*<<< orphan*/  MISC_REGISTERS_GPIO_OUTPUT_HIGH ; 
 int /*<<< orphan*/  NETIF_MSG_LINK ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*,struct bnx2x_phy*,struct link_params*) ; 

__attribute__((used)) static int FUNC6(struct bnx2x_phy *phy,
				  struct link_params *params,
				  struct link_vars *vars)
{
	struct bnx2x *bp = params->bp;
	FUNC0(NETIF_MSG_LINK, "init 8705\n");
	/* Restore normal power mode*/
	FUNC4(bp, MISC_REGISTERS_GPIO_2,
		       MISC_REGISTERS_GPIO_OUTPUT_HIGH, params->port);
	/* HW reset */
	FUNC2(bp, params->port);
	FUNC1(bp, phy, MDIO_PMA_DEVAD, MDIO_PMA_REG_CTRL, 0xa040);
	FUNC5(bp, phy, params);

	FUNC1(bp, phy,
			 MDIO_PMA_DEVAD, MDIO_PMA_REG_MISC_CTRL, 0x8288);
	FUNC1(bp, phy,
			 MDIO_PMA_DEVAD, MDIO_PMA_REG_PHY_IDENTIFIER, 0x7fbf);
	FUNC1(bp, phy,
			 MDIO_PMA_DEVAD, MDIO_PMA_REG_CMU_PLL_BYPASS, 0x0100);
	FUNC1(bp, phy,
			 MDIO_WIS_DEVAD, MDIO_WIS_REG_LASI_CNTL, 0x1);
	/* BCM8705 doesn't have microcode, hence the 0 */
	FUNC3(bp, params->port, params->shmem_base, 0);
	return 0;
}