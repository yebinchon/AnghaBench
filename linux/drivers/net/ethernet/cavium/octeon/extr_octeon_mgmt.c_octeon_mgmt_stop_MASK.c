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
struct octeon_mgmt {int /*<<< orphan*/  tx_ring; int /*<<< orphan*/  tx_ring_handle; int /*<<< orphan*/  dev; int /*<<< orphan*/  rx_ring; int /*<<< orphan*/  rx_ring_handle; int /*<<< orphan*/  rx_list; int /*<<< orphan*/  tx_list; int /*<<< orphan*/  irq; int /*<<< orphan*/  napi; } ;
struct net_device {scalar_t__ phydev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  OCTEON_MGMT_RX_RING_SIZE ; 
 int /*<<< orphan*/  OCTEON_MGMT_TX_RING_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct octeon_mgmt* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct octeon_mgmt*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct net_device *netdev)
{
	struct octeon_mgmt *p = FUNC4(netdev);

	FUNC3(&p->napi);
	FUNC6(netdev);

	if (netdev->phydev)
		FUNC8(netdev->phydev);

	FUNC5(netdev);

	FUNC7(p);

	FUNC1(p->irq, netdev);

	/* dma_unmap is a nop on Octeon, so just free everything.  */
	FUNC10(&p->tx_list);
	FUNC10(&p->rx_list);

	FUNC0(p->dev, p->rx_ring_handle,
			 FUNC9(OCTEON_MGMT_RX_RING_SIZE),
			 DMA_BIDIRECTIONAL);
	FUNC2(p->rx_ring);

	FUNC0(p->dev, p->tx_ring_handle,
			 FUNC9(OCTEON_MGMT_TX_RING_SIZE),
			 DMA_BIDIRECTIONAL);
	FUNC2(p->tx_ring);

	return 0;
}