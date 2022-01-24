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
struct TYPE_2__ {void* olinfo_status; void* cmd_type_len; int /*<<< orphan*/  buffer_addr; } ;
union ixgbe_adv_tx_desc {TYPE_1__ read; } ;
typedef  int u32 ;
struct xdp_desc {int len; int /*<<< orphan*/  addr; } ;
struct ixgbe_tx_buffer {int bytecount; int gso_segs; int /*<<< orphan*/ * xdpf; } ;
struct ixgbe_ring {size_t next_to_use; size_t count; int /*<<< orphan*/  xsk_umem; struct ixgbe_tx_buffer* tx_buffer_info; int /*<<< orphan*/  dev; int /*<<< orphan*/  netdev; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int IXGBE_ADVTXD_DCMD_DEXT ; 
 int IXGBE_ADVTXD_DCMD_IFCS ; 
 int IXGBE_ADVTXD_DTYP_DATA ; 
 int IXGBE_ADVTXD_PAYLEN_SHIFT ; 
 int IXGBE_TXD_CMD ; 
 union ixgbe_adv_tx_desc* FUNC0 (struct ixgbe_ring*,size_t) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_ring*) ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_ring*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct xdp_desc*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC11(struct ixgbe_ring *xdp_ring, unsigned int budget)
{
	union ixgbe_adv_tx_desc *tx_desc = NULL;
	struct ixgbe_tx_buffer *tx_bi;
	bool work_done = true;
	struct xdp_desc desc;
	dma_addr_t dma;
	u32 cmd_type;

	while (budget-- > 0) {
		if (FUNC7(!FUNC4(xdp_ring)) ||
		    !FUNC6(xdp_ring->netdev)) {
			work_done = false;
			break;
		}

		if (!FUNC9(xdp_ring->xsk_umem, &desc))
			break;

		dma = FUNC8(xdp_ring->xsk_umem, desc.addr);

		FUNC3(xdp_ring->dev, dma, desc.len,
					   DMA_BIDIRECTIONAL);

		tx_bi = &xdp_ring->tx_buffer_info[xdp_ring->next_to_use];
		tx_bi->bytecount = desc.len;
		tx_bi->xdpf = NULL;
		tx_bi->gso_segs = 1;

		tx_desc = FUNC0(xdp_ring, xdp_ring->next_to_use);
		tx_desc->read.buffer_addr = FUNC2(dma);

		/* put descriptor type bits */
		cmd_type = IXGBE_ADVTXD_DTYP_DATA |
			   IXGBE_ADVTXD_DCMD_DEXT |
			   IXGBE_ADVTXD_DCMD_IFCS;
		cmd_type |= desc.len | IXGBE_TXD_CMD;
		tx_desc->read.cmd_type_len = FUNC1(cmd_type);
		tx_desc->read.olinfo_status =
			FUNC1(desc.len << IXGBE_ADVTXD_PAYLEN_SHIFT);

		xdp_ring->next_to_use++;
		if (xdp_ring->next_to_use == xdp_ring->count)
			xdp_ring->next_to_use = 0;
	}

	if (tx_desc) {
		FUNC5(xdp_ring);
		FUNC10(xdp_ring->xsk_umem);
	}

	return !!budget && work_done;
}