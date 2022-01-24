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
struct enetc_ndev_priv {int num_tx_rings; int num_rx_rings; TYPE_1__* si; } ;
struct enetc_hw {scalar_t__ port; } ;
struct TYPE_2__ {struct enetc_hw hw; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  enetc_port_regs ; 
 int /*<<< orphan*/  enetc_rxbdr_regs ; 
 int /*<<< orphan*/  enetc_si_regs ; 
 int /*<<< orphan*/  enetc_txbdr_regs ; 
 struct enetc_ndev_priv* FUNC1 (struct net_device*) ; 

__attribute__((used)) static int FUNC2(struct net_device *ndev)
{
	struct enetc_ndev_priv *priv = FUNC1(ndev);
	struct enetc_hw *hw = &priv->si->hw;
	int len;

	len = FUNC0(enetc_si_regs);
	len += FUNC0(enetc_txbdr_regs) * priv->num_tx_rings;
	len += FUNC0(enetc_rxbdr_regs) * priv->num_rx_rings;

	if (hw->port)
		len += FUNC0(enetc_port_regs);

	len *= sizeof(u32) * 2; /* store 2 entries per reg: addr and value */

	return len;
}