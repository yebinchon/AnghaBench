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
struct csi2tx_priv {scalar_t__ base; } ;

/* Variables and functions */
 int CSI2TX_V2_DPHY_CFG_MODE_LPDT ; 
 scalar_t__ CSI2TX_V2_DPHY_CFG_REG ; 
 int CSI2TX_V2_DPHY_CFG_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct csi2tx_priv*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct csi2tx_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct csi2tx_priv *csi2tx)
{
	u32 reg;

	FUNC1(csi2tx);

	/* Put our lanes (clock and data) out of reset */
	reg = CSI2TX_V2_DPHY_CFG_RESET | CSI2TX_V2_DPHY_CFG_MODE_LPDT;
	FUNC2(reg, csi2tx->base + CSI2TX_V2_DPHY_CFG_REG);

	FUNC0(csi2tx, reg);
}