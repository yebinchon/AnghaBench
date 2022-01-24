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
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct ena_eth_io_rx_desc {int ctrl; int buff_addr_hi; scalar_t__ buff_addr_lo; int /*<<< orphan*/  req_id; int /*<<< orphan*/  length; } ;
struct ena_com_io_sq {scalar_t__ direction; int phase; scalar_t__ dma_addr_bits; } ;
struct ena_com_buf {int paddr; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int EFAULT ; 
 scalar_t__ ENA_COM_IO_QUEUE_DIRECTION_RX ; 
 int ENA_ETH_IO_RX_DESC_COMP_REQ_MASK ; 
 int ENA_ETH_IO_RX_DESC_FIRST_MASK ; 
 int ENA_ETH_IO_RX_DESC_LAST_MASK ; 
 int ENA_ETH_IO_RX_DESC_PHASE_MASK ; 
 int ENOSPC ; 
 int FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ena_com_io_sq*,int) ; 
 int FUNC3 (struct ena_com_io_sq*) ; 
 struct ena_eth_io_rx_desc* FUNC4 (struct ena_com_io_sq*) ; 
 int /*<<< orphan*/  FUNC5 (struct ena_eth_io_rx_desc*,int,int) ; 
 scalar_t__ FUNC6 (int) ; 

int FUNC7(struct ena_com_io_sq *io_sq,
			       struct ena_com_buf *ena_buf,
			       u16 req_id)
{
	struct ena_eth_io_rx_desc *desc;

	FUNC1(io_sq->direction != ENA_COM_IO_QUEUE_DIRECTION_RX, "wrong Q type");

	if (FUNC6(!FUNC2(io_sq, 1)))
		return -ENOSPC;

	desc = FUNC4(io_sq);
	if (FUNC6(!desc))
		return -EFAULT;

	FUNC5(desc, 0x0, sizeof(struct ena_eth_io_rx_desc));

	desc->length = ena_buf->len;

	desc->ctrl = ENA_ETH_IO_RX_DESC_FIRST_MASK;
	desc->ctrl |= ENA_ETH_IO_RX_DESC_LAST_MASK;
	desc->ctrl |= io_sq->phase & ENA_ETH_IO_RX_DESC_PHASE_MASK;
	desc->ctrl |= ENA_ETH_IO_RX_DESC_COMP_REQ_MASK;

	desc->req_id = req_id;

	desc->buff_addr_lo = (u32)ena_buf->paddr;
	desc->buff_addr_hi =
		((ena_buf->paddr & FUNC0(io_sq->dma_addr_bits - 1, 32)) >> 32);

	return FUNC3(io_sq);
}