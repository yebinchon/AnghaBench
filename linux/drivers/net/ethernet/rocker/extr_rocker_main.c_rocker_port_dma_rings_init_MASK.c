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
struct rocker_port {int /*<<< orphan*/  tx_ring; int /*<<< orphan*/  rx_ring; int /*<<< orphan*/  dev; int /*<<< orphan*/  port_number; struct rocker* rocker; } ;
struct rocker {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ROCKER_DMA_RX_DEFAULT_SIZE ; 
 int /*<<< orphan*/  ROCKER_DMA_RX_DESC_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ROCKER_DMA_TX_DEFAULT_SIZE ; 
 int /*<<< orphan*/  ROCKER_DMA_TX_DESC_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct rocker*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rocker*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct rocker*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct rocker*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct rocker*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct rocker_port*) ; 

__attribute__((used)) static int FUNC9(struct rocker_port *rocker_port)
{
	struct rocker *rocker = rocker_port->rocker;
	int err;

	err = FUNC5(rocker,
				     FUNC1(rocker_port->port_number),
				     ROCKER_DMA_TX_DEFAULT_SIZE,
				     &rocker_port->tx_ring);
	if (err) {
		FUNC2(rocker_port->dev, "failed to create tx dma ring\n");
		return err;
	}

	err = FUNC3(rocker, &rocker_port->tx_ring,
					 PCI_DMA_TODEVICE,
					 ROCKER_DMA_TX_DESC_SIZE);
	if (err) {
		FUNC2(rocker_port->dev, "failed to alloc tx dma ring buffers\n");
		goto err_dma_tx_ring_bufs_alloc;
	}

	err = FUNC5(rocker,
				     FUNC0(rocker_port->port_number),
				     ROCKER_DMA_RX_DEFAULT_SIZE,
				     &rocker_port->rx_ring);
	if (err) {
		FUNC2(rocker_port->dev, "failed to create rx dma ring\n");
		goto err_dma_rx_ring_create;
	}

	err = FUNC3(rocker, &rocker_port->rx_ring,
					 PCI_DMA_BIDIRECTIONAL,
					 ROCKER_DMA_RX_DESC_SIZE);
	if (err) {
		FUNC2(rocker_port->dev, "failed to alloc rx dma ring buffers\n");
		goto err_dma_rx_ring_bufs_alloc;
	}

	err = FUNC8(rocker_port);
	if (err) {
		FUNC2(rocker_port->dev, "failed to alloc rx dma ring skbs\n");
		goto err_dma_rx_ring_skbs_alloc;
	}
	FUNC7(rocker, &rocker_port->rx_ring);

	return 0;

err_dma_rx_ring_skbs_alloc:
	FUNC4(rocker, &rocker_port->rx_ring,
				  PCI_DMA_BIDIRECTIONAL);
err_dma_rx_ring_bufs_alloc:
	FUNC6(rocker, &rocker_port->rx_ring);
err_dma_rx_ring_create:
	FUNC4(rocker, &rocker_port->tx_ring,
				  PCI_DMA_TODEVICE);
err_dma_tx_ring_bufs_alloc:
	FUNC6(rocker, &rocker_port->tx_ring);
	return err;
}