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
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MDIO_AN_DEVAD ; 
 int /*<<< orphan*/  MDIO_AN_REG_CTRL ; 
 int /*<<< orphan*/  MDIO_PMA_DEVAD ; 
 int /*<<< orphan*/  MDIO_PMA_REG_10G_CTRL2 ; 
 int /*<<< orphan*/  MDIO_PMA_REG_BCM_CTRL ; 
 int /*<<< orphan*/  MDIO_PMA_REG_CTRL ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct bnx2x *bp, struct bnx2x_phy *phy)
{
	/* Force KR or KX */
	FUNC0(bp, phy,
			 MDIO_PMA_DEVAD, MDIO_PMA_REG_CTRL, 0x2040);
	FUNC0(bp, phy,
			 MDIO_PMA_DEVAD, MDIO_PMA_REG_10G_CTRL2, 0x000b);
	FUNC0(bp, phy,
			 MDIO_PMA_DEVAD, MDIO_PMA_REG_BCM_CTRL, 0x0000);
	FUNC0(bp, phy,
			 MDIO_AN_DEVAD, MDIO_AN_REG_CTRL, 0x0000);
}