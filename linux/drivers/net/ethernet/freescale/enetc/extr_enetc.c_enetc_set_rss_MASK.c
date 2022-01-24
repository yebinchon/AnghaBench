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
struct net_device {int dummy; } ;
struct enetc_ndev_priv {int /*<<< orphan*/  num_rx_rings; TYPE_1__* si; } ;
struct enetc_hw {int dummy; } ;
struct TYPE_2__ {struct enetc_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENETC_SIMR ; 
 int /*<<< orphan*/  ENETC_SIMR_RSSE ; 
 int /*<<< orphan*/  ENETC_SIRBGCR ; 
 int /*<<< orphan*/  FUNC0 (struct enetc_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct enetc_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct enetc_ndev_priv* FUNC2 (struct net_device*) ; 

__attribute__((used)) static int FUNC3(struct net_device *ndev, int en)
{
	struct enetc_ndev_priv *priv = FUNC2(ndev);
	struct enetc_hw *hw = &priv->si->hw;
	u32 reg;

	FUNC1(hw, ENETC_SIRBGCR, priv->num_rx_rings);

	reg = FUNC0(hw, ENETC_SIMR);
	reg &= ~ENETC_SIMR_RSSE;
	reg |= (en) ? ENETC_SIMR_RSSE : 0;
	FUNC1(hw, ENETC_SIMR, reg);

	return 0;
}