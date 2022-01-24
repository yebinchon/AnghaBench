#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct xdp_desc {int /*<<< orphan*/  len; int /*<<< orphan*/  addr; } ;
struct i40e_tx_desc {int cmd_type_offset_bsz; int /*<<< orphan*/  buffer_addr; } ;
struct i40e_tx_buffer {int /*<<< orphan*/  bytecount; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_busy; } ;
struct i40e_ring {size_t next_to_use; size_t count; int /*<<< orphan*/  xsk_umem; struct i40e_tx_buffer* tx_bi; int /*<<< orphan*/  dev; TYPE_1__ tx_stats; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  FUNC0 (struct i40e_ring*) ; 
 int I40E_TXD_QW1_CMD_SHIFT ; 
 struct i40e_tx_desc* FUNC1 (struct i40e_ring*,size_t) ; 
 int I40E_TX_DESC_CMD_EOP ; 
 int I40E_TX_DESC_CMD_ICRC ; 
 int I40E_TX_DESC_CMD_RS ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i40e_ring*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct xdp_desc*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC10(struct i40e_ring *xdp_ring, unsigned int budget)
{
	struct i40e_tx_desc *tx_desc = NULL;
	struct i40e_tx_buffer *tx_bi;
	bool work_done = true;
	struct xdp_desc desc;
	dma_addr_t dma;

	while (budget-- > 0) {
		if (!FUNC6(FUNC0(xdp_ring))) {
			xdp_ring->tx_stats.tx_busy++;
			work_done = false;
			break;
		}

		if (!FUNC8(xdp_ring->xsk_umem, &desc))
			break;

		dma = FUNC7(xdp_ring->xsk_umem, desc.addr);

		FUNC4(xdp_ring->dev, dma, desc.len,
					   DMA_BIDIRECTIONAL);

		tx_bi = &xdp_ring->tx_bi[xdp_ring->next_to_use];
		tx_bi->bytecount = desc.len;

		tx_desc = FUNC1(xdp_ring, xdp_ring->next_to_use);
		tx_desc->buffer_addr = FUNC3(dma);
		tx_desc->cmd_type_offset_bsz =
			FUNC2(I40E_TX_DESC_CMD_ICRC
				   | I40E_TX_DESC_CMD_EOP,
				   0, desc.len, 0);

		xdp_ring->next_to_use++;
		if (xdp_ring->next_to_use == xdp_ring->count)
			xdp_ring->next_to_use = 0;
	}

	if (tx_desc) {
		/* Request an interrupt for the last frame and bump tail ptr. */
		tx_desc->cmd_type_offset_bsz |= (I40E_TX_DESC_CMD_RS <<
						 I40E_TXD_QW1_CMD_SHIFT);
		FUNC5(xdp_ring);

		FUNC9(xdp_ring->xsk_umem);
	}

	return !!budget && work_done;
}