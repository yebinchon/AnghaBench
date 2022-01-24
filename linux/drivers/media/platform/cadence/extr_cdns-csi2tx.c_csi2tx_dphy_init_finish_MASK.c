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
typedef  int u32 ;
struct csi2tx_priv {unsigned int num_lanes; scalar_t__ base; scalar_t__* lanes; } ;

/* Variables and functions */
 int CSI2TX_DPHY_CFG_CLK_ENABLE ; 
 int FUNC0 (scalar_t__) ; 
 int CSI2TX_DPHY_CFG_MODE_HS ; 
 int CSI2TX_DPHY_CFG_MODE_MASK ; 
 scalar_t__ CSI2TX_DPHY_CFG_REG ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct csi2tx_priv *csi2tx, u32 reg)
{
	unsigned int i;

	FUNC1(10);

	/* Enable our (clock and data) lanes */
	reg |= CSI2TX_DPHY_CFG_CLK_ENABLE;
	for (i = 0; i < csi2tx->num_lanes; i++)
		reg |= FUNC0(csi2tx->lanes[i] - 1);
	FUNC2(reg, csi2tx->base + CSI2TX_DPHY_CFG_REG);

	FUNC1(10);

	/* Switch to HS mode */
	reg &= ~CSI2TX_DPHY_CFG_MODE_MASK;
	FUNC2(reg | CSI2TX_DPHY_CFG_MODE_HS,
	       csi2tx->base + CSI2TX_DPHY_CFG_REG);
}