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
struct tse_buffer {int /*<<< orphan*/  len; int /*<<< orphan*/  dma_addr; } ;
struct altera_tse_private {int /*<<< orphan*/  tx_dma_desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSGDMA_DESC_CTL_TX_SINGLE ; 
 int /*<<< orphan*/  MSGDMA_DESC_TX_STRIDE ; 
 int /*<<< orphan*/  burst_seq_num ; 
 int /*<<< orphan*/  control ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  len ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  read_addr_hi ; 
 int /*<<< orphan*/  read_addr_lo ; 
 int /*<<< orphan*/  stride ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  write_addr_hi ; 
 int /*<<< orphan*/  write_addr_lo ; 

int FUNC4(struct altera_tse_private *priv, struct tse_buffer *buffer)
{
	FUNC0(FUNC1(buffer->dma_addr), priv->tx_dma_desc,
		FUNC2(read_addr_lo));
	FUNC0(FUNC3(buffer->dma_addr), priv->tx_dma_desc,
		FUNC2(read_addr_hi));
	FUNC0(0, priv->tx_dma_desc, FUNC2(write_addr_lo));
	FUNC0(0, priv->tx_dma_desc, FUNC2(write_addr_hi));
	FUNC0(buffer->len, priv->tx_dma_desc, FUNC2(len));
	FUNC0(0, priv->tx_dma_desc, FUNC2(burst_seq_num));
	FUNC0(MSGDMA_DESC_TX_STRIDE, priv->tx_dma_desc,
		FUNC2(stride));
	FUNC0(MSGDMA_DESC_CTL_TX_SINGLE, priv->tx_dma_desc,
		FUNC2(control));
	return 0;
}