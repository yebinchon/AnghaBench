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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
typedef  scalar_t__ u16 ;
struct ice_tx_desc {void* cmd_type_offset_bsz; void* buf_addr; } ;
struct ice_tx_buf {struct ice_tx_desc* next_to_watch; } ;
struct ice_ring {size_t next_to_use; size_t count; int /*<<< orphan*/  dev; int /*<<< orphan*/  tail; struct ice_tx_buf* tx_buf; } ;
typedef  int dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EINVAL ; 
 int ICE_TXD_QW1_CMD_S ; 
 int ICE_TXD_QW1_L2TAG1_S ; 
 int ICE_TXD_QW1_OFFSET_S ; 
 int ICE_TXD_QW1_TX_BUF_SZ_S ; 
 struct ice_tx_desc* FUNC0 (struct ice_ring*,size_t) ; 
 int ICE_TX_DESC_CMD_EOP ; 
 int ICE_TX_DESC_CMD_RS ; 
 int ICE_TX_DESC_DTYPE_DATA ; 
 void* FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct ice_ring *tx_ring, u8 *data, u16 size)
{
	struct ice_tx_desc *tx_desc;
	struct ice_tx_buf *tx_buf;
	dma_addr_t dma;
	u64 td_cmd;

	tx_desc = FUNC0(tx_ring, tx_ring->next_to_use);
	tx_buf = &tx_ring->tx_buf[tx_ring->next_to_use];

	dma = FUNC2(tx_ring->dev, data, size, DMA_TO_DEVICE);
	if (FUNC3(tx_ring->dev, dma))
		return -EINVAL;

	tx_desc->buf_addr = FUNC1(dma);

	/* These flags are required for a descriptor to be pushed out */
	td_cmd = (u64)(ICE_TX_DESC_CMD_EOP | ICE_TX_DESC_CMD_RS);
	tx_desc->cmd_type_offset_bsz =
		FUNC1(ICE_TX_DESC_DTYPE_DATA |
			    (td_cmd << ICE_TXD_QW1_CMD_S) |
			    ((u64)0 << ICE_TXD_QW1_OFFSET_S) |
			    ((u64)size << ICE_TXD_QW1_TX_BUF_SZ_S) |
			    ((u64)0 << ICE_TXD_QW1_L2TAG1_S));

	tx_buf->next_to_watch = tx_desc;

	/* Force memory write to complete before letting h/w know
	 * there are new descriptors to fetch.
	 */
	FUNC6();

	tx_ring->next_to_use++;
	if (tx_ring->next_to_use >= tx_ring->count)
		tx_ring->next_to_use = 0;

	FUNC7(tx_ring->next_to_use, tx_ring->tail);

	/* Wait until the packets get transmitted to the receive queue. */
	FUNC5(1000, 2000);
	FUNC4(tx_ring->dev, dma, size, DMA_TO_DEVICE);

	return 0;
}