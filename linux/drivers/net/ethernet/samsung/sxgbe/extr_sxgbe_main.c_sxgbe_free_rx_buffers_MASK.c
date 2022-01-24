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
struct sxgbe_rx_queue {int /*<<< orphan*/ * rx_skbuff_dma; int /*<<< orphan*/ * rx_skbuff; } ;
struct sxgbe_rx_norm_desc {int dummy; } ;
struct sxgbe_priv_data {int /*<<< orphan*/  device; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct sxgbe_priv_data* FUNC2 (struct net_device*) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev,
				  struct sxgbe_rx_norm_desc *p, int i,
				  unsigned int dma_buf_sz,
				  struct sxgbe_rx_queue *rx_ring)
{
	struct sxgbe_priv_data *priv = FUNC2(dev);

	FUNC1(rx_ring->rx_skbuff[i]);
	FUNC0(priv->device, rx_ring->rx_skbuff_dma[i],
			 dma_buf_sz, DMA_FROM_DEVICE);
}