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
struct tse_buffer {int dummy; } ;
struct altera_tse_private {unsigned int rx_ring_size; unsigned int tx_ring_size; int /*<<< orphan*/ * rx_ring; int /*<<< orphan*/ * tx_ring; scalar_t__ rx_prod; scalar_t__ rx_cons; int /*<<< orphan*/  rx_dma_buf_sz; scalar_t__ tx_prod; scalar_t__ tx_cons; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct altera_tse_private*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct altera_tse_private*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct altera_tse_private *priv)
{
	unsigned int rx_descs = priv->rx_ring_size;
	unsigned int tx_descs = priv->tx_ring_size;
	int ret = -ENOMEM;
	int i;

	/* Create Rx ring buffer */
	priv->rx_ring = FUNC0(rx_descs, sizeof(struct tse_buffer),
				GFP_KERNEL);
	if (!priv->rx_ring)
		goto err_rx_ring;

	/* Create Tx ring buffer */
	priv->tx_ring = FUNC0(tx_descs, sizeof(struct tse_buffer),
				GFP_KERNEL);
	if (!priv->tx_ring)
		goto err_tx_ring;

	priv->tx_cons = 0;
	priv->tx_prod = 0;

	/* Init Rx ring */
	for (i = 0; i < rx_descs; i++) {
		ret = FUNC3(priv, &priv->rx_ring[i],
					 priv->rx_dma_buf_sz);
		if (ret)
			goto err_init_rx_buffers;
	}

	priv->rx_cons = 0;
	priv->rx_prod = 0;

	return 0;
err_init_rx_buffers:
	while (--i >= 0)
		FUNC2(priv, &priv->rx_ring[i]);
	FUNC1(priv->tx_ring);
err_tx_ring:
	FUNC1(priv->rx_ring);
err_rx_ring:
	return ret;
}