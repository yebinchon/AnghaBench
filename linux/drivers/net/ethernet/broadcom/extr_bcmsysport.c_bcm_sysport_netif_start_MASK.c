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
struct net_device {int /*<<< orphan*/  phydev; } ;
struct bcm_sysport_priv {int /*<<< orphan*/  is_lite; int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int INTRL2_0_RDMA_MBDONE ; 
 int INTRL2_0_TDMA_MBDONE_MASK ; 
 int INTRL2_0_TX_RING_FULL ; 
 int /*<<< orphan*/  bcm_sysport_dim_work ; 
 int /*<<< orphan*/  FUNC0 (struct bcm_sysport_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm_sysport_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm_sysport_priv*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bcm_sysport_priv*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct bcm_sysport_priv* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct net_device *dev)
{
	struct bcm_sysport_priv *priv = FUNC5(dev);

	/* Enable NAPI */
	FUNC0(priv, bcm_sysport_dim_work);
	FUNC1(priv);
	FUNC4(&priv->napi);

	/* Enable RX interrupt and TX ring full interrupt */
	FUNC2(priv, INTRL2_0_RDMA_MBDONE | INTRL2_0_TX_RING_FULL);

	FUNC6(dev->phydev);

	/* Enable TX interrupts for the TXQs */
	if (!priv->is_lite)
		FUNC3(priv, 0xffffffff);
	else
		FUNC2(priv, INTRL2_0_TDMA_MBDONE_MASK);
}