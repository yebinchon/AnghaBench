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
typedef  unsigned int u32 ;
struct tx_desc {int dummy; } ;
struct rx_desc {int dummy; } ;
struct pxa168_eth_private {int tx_curr_desc_q; int rx_curr_desc_q; scalar_t__ rx_desc_dma; scalar_t__ tx_desc_dma; } ;
struct net_device {int /*<<< orphan*/  phydev; } ;

/* Variables and functions */
 unsigned int ALL_INTS ; 
 int /*<<< orphan*/  ETH_C_RX_DESC_0 ; 
 int /*<<< orphan*/  ETH_C_TX_DESC_1 ; 
 int /*<<< orphan*/  ETH_F_RX_DESC_0 ; 
 int /*<<< orphan*/  INT_CAUSE ; 
 int /*<<< orphan*/  INT_MASK ; 
 unsigned int PCR_EN ; 
 int /*<<< orphan*/  PORT_CONFIG ; 
 int /*<<< orphan*/  SDMA_CMD ; 
 unsigned int SDMA_CMD_ERD ; 
 struct pxa168_eth_private* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct pxa168_eth_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pxa168_eth_private*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
	unsigned int val = 0;
	struct pxa168_eth_private *pep = FUNC0(dev);
	int tx_curr_desc, rx_curr_desc;

	FUNC1(dev->phydev);

	/* Assignment of Tx CTRP of given queue */
	tx_curr_desc = pep->tx_curr_desc_q;
	FUNC3(pep, ETH_C_TX_DESC_1,
	    (u32) (pep->tx_desc_dma + tx_curr_desc * sizeof(struct tx_desc)));

	/* Assignment of Rx CRDP of given queue */
	rx_curr_desc = pep->rx_curr_desc_q;
	FUNC3(pep, ETH_C_RX_DESC_0,
	    (u32) (pep->rx_desc_dma + rx_curr_desc * sizeof(struct rx_desc)));

	FUNC3(pep, ETH_F_RX_DESC_0,
	    (u32) (pep->rx_desc_dma + rx_curr_desc * sizeof(struct rx_desc)));

	/* Clear all interrupts */
	FUNC3(pep, INT_CAUSE, 0);

	/* Enable all interrupts for receive, transmit and error. */
	FUNC3(pep, INT_MASK, ALL_INTS);

	val = FUNC2(pep, PORT_CONFIG);
	val |= PCR_EN;
	FUNC3(pep, PORT_CONFIG, val);

	/* Start RX DMA engine */
	val = FUNC2(pep, SDMA_CMD);
	val |= SDMA_CMD_ERD;
	FUNC3(pep, SDMA_CMD, val);
}