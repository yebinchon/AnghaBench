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
struct nixge_priv {int /*<<< orphan*/  rx_irq; int /*<<< orphan*/  tx_irq; int /*<<< orphan*/  dma_err_tasklet; int /*<<< orphan*/  napi; } ;
struct net_device {scalar_t__ phydev; } ;

/* Variables and functions */
 int XAXIDMA_CR_RUNSTOP_MASK ; 
 int /*<<< orphan*/  XAXIDMA_RX_CR_OFFSET ; 
 int /*<<< orphan*/  XAXIDMA_TX_CR_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct nixge_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int FUNC4 (struct nixge_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nixge_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct net_device *ndev)
{
	struct nixge_priv *priv = FUNC2(ndev);
	u32 cr;

	FUNC3(ndev);
	FUNC1(&priv->napi);

	if (ndev->phydev) {
		FUNC8(ndev->phydev);
		FUNC7(ndev->phydev);
	}

	cr = FUNC4(priv, XAXIDMA_RX_CR_OFFSET);
	FUNC5(priv, XAXIDMA_RX_CR_OFFSET,
			    cr & (~XAXIDMA_CR_RUNSTOP_MASK));
	cr = FUNC4(priv, XAXIDMA_TX_CR_OFFSET);
	FUNC5(priv, XAXIDMA_TX_CR_OFFSET,
			    cr & (~XAXIDMA_CR_RUNSTOP_MASK));

	FUNC9(&priv->dma_err_tasklet);

	FUNC0(priv->tx_irq, ndev);
	FUNC0(priv->rx_irq, ndev);

	FUNC6(ndev);

	return 0;
}