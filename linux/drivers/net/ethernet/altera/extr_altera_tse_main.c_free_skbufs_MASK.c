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
struct net_device {int dummy; } ;
struct altera_tse_private {unsigned int rx_ring_size; unsigned int tx_ring_size; int /*<<< orphan*/ * tx_ring; int /*<<< orphan*/ * rx_ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct altera_tse_private* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct altera_tse_private*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct altera_tse_private*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
	struct altera_tse_private *priv = FUNC1(dev);
	unsigned int rx_descs = priv->rx_ring_size;
	unsigned int tx_descs = priv->tx_ring_size;
	int i;

	/* Release the DMA TX/RX socket buffers */
	for (i = 0; i < rx_descs; i++)
		FUNC2(priv, &priv->rx_ring[i]);
	for (i = 0; i < tx_descs; i++)
		FUNC3(priv, &priv->tx_ring[i]);


	FUNC0(priv->tx_ring);
}