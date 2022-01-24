#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct stmmac_priv {TYPE_1__* plat; int /*<<< orphan*/  ioaddr; int /*<<< orphan*/  hw; } ;
struct net_device {int dummy; } ;
struct ethtool_regs {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  has_xgmac; } ;

/* Variables and functions */
 int DMA_BUS_MODE ; 
 size_t ETHTOOL_DMA_OFFSET ; 
 int NUM_DWMAC1000_DMA_REGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct stmmac_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct stmmac_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct stmmac_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev,
			  struct ethtool_regs *regs, void *space)
{
	struct stmmac_priv *priv = FUNC1(dev);
	u32 *reg_space = (u32 *) space;

	FUNC3(priv, priv->hw, reg_space);
	FUNC2(priv, priv->ioaddr, reg_space);

	if (!priv->plat->has_xgmac) {
		/* Copy DMA registers to where ethtool expects them */
		FUNC0(&reg_space[ETHTOOL_DMA_OFFSET],
		       &reg_space[DMA_BUS_MODE / 4],
		       NUM_DWMAC1000_DMA_REGS * 4);
	}
}