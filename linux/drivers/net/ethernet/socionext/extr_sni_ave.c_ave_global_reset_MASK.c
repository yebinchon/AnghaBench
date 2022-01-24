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
struct net_device {int dummy; } ;
struct ave_private {scalar_t__ base; int /*<<< orphan*/  phy_mode; } ;

/* Variables and functions */
 scalar_t__ AVE_CFGR ; 
 int AVE_CFGR_CHE ; 
 int AVE_CFGR_FLE ; 
 int AVE_CFGR_IPFCEN ; 
 int AVE_CFGR_MII ; 
 scalar_t__ AVE_GRR ; 
 int AVE_GRR_GRST ; 
 int AVE_GRR_PHYRST ; 
 scalar_t__ AVE_RSTCTRL ; 
 int AVE_RSTCTRL_RMIIRST ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct ave_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct net_device *ndev)
{
	struct ave_private *priv = FUNC2(ndev);
	u32 val;

	/* set config register */
	val = AVE_CFGR_FLE | AVE_CFGR_IPFCEN | AVE_CFGR_CHE;
	if (!FUNC3(priv->phy_mode))
		val |= AVE_CFGR_MII;
	FUNC5(val, priv->base + AVE_CFGR);

	/* reset RMII register */
	val = FUNC4(priv->base + AVE_RSTCTRL);
	val &= ~AVE_RSTCTRL_RMIIRST;
	FUNC5(val, priv->base + AVE_RSTCTRL);

	/* assert reset */
	FUNC5(AVE_GRR_GRST | AVE_GRR_PHYRST, priv->base + AVE_GRR);
	FUNC1(20);

	/* 1st, negate PHY reset only */
	FUNC5(AVE_GRR_GRST, priv->base + AVE_GRR);
	FUNC1(40);

	/* negate reset */
	FUNC5(0, priv->base + AVE_GRR);
	FUNC1(40);

	/* negate RMII register */
	val = FUNC4(priv->base + AVE_RSTCTRL);
	val |= AVE_RSTCTRL_RMIIRST;
	FUNC5(val, priv->base + AVE_RSTCTRL);

	FUNC0(ndev);
}