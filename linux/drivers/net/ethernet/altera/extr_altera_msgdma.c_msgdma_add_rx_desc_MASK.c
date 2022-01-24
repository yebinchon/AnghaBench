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
struct tse_buffer {int /*<<< orphan*/  dma_addr; } ;
struct altera_tse_private {int rx_dma_buf_sz; int /*<<< orphan*/  rx_dma_desc; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int MSGDMA_DESC_CTL_EARLY_IRQ ; 
 int MSGDMA_DESC_CTL_END_ON_EOP ; 
 int MSGDMA_DESC_CTL_END_ON_LEN ; 
 int MSGDMA_DESC_CTL_GO ; 
 int MSGDMA_DESC_CTL_TR_COMP_IRQ ; 
 int MSGDMA_DESC_CTL_TR_ERR_IRQ ; 
 int burst_seq_num ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int read_addr_hi ; 
 int read_addr_lo ; 
 int stride ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int write_addr_hi ; 
 int write_addr_lo ; 

void FUNC4(struct altera_tse_private *priv,
			struct tse_buffer *rxbuffer)
{
	u32 len = priv->rx_dma_buf_sz;
	dma_addr_t dma_addr = rxbuffer->dma_addr;
	u32 control = (MSGDMA_DESC_CTL_END_ON_EOP
			| MSGDMA_DESC_CTL_END_ON_LEN
			| MSGDMA_DESC_CTL_TR_COMP_IRQ
			| MSGDMA_DESC_CTL_EARLY_IRQ
			| MSGDMA_DESC_CTL_TR_ERR_IRQ
			| MSGDMA_DESC_CTL_GO);

	FUNC0(0, priv->rx_dma_desc, FUNC2(read_addr_lo));
	FUNC0(0, priv->rx_dma_desc, FUNC2(read_addr_hi));
	FUNC0(FUNC1(dma_addr), priv->rx_dma_desc,
		FUNC2(write_addr_lo));
	FUNC0(FUNC3(dma_addr), priv->rx_dma_desc,
		FUNC2(write_addr_hi));
	FUNC0(len, priv->rx_dma_desc, FUNC2(len));
	FUNC0(0, priv->rx_dma_desc, FUNC2(burst_seq_num));
	FUNC0(0x00010001, priv->rx_dma_desc, FUNC2(stride));
	FUNC0(control, priv->rx_dma_desc, FUNC2(control));
}