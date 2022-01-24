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
struct sxgbe_rx_queue {int /*<<< orphan*/  rx_skbuff; int /*<<< orphan*/  rx_skbuff_dma; int /*<<< orphan*/  dma_rx_phy; int /*<<< orphan*/  dma_rx; } ;
struct sxgbe_rx_norm_desc {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct device *dev, struct sxgbe_rx_queue *rx_ring,
			 int rx_rsize)
{
	FUNC0(dev, rx_rsize * sizeof(struct sxgbe_rx_norm_desc),
			  rx_ring->dma_rx, rx_ring->dma_rx_phy);
	FUNC1(rx_ring->rx_skbuff_dma);
	FUNC1(rx_ring->rx_skbuff);
}