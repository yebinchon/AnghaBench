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
typedef  scalar_t__ u16 ;
struct fm10k_mbx_fifo {int dummy; } ;
struct fm10k_mbx_info {scalar_t__ pulled; scalar_t__ tail_len; scalar_t__ mbmem_len; int /*<<< orphan*/  tx_dwords; int /*<<< orphan*/  tx_messages; int /*<<< orphan*/  tail; struct fm10k_mbx_fifo tx; } ;
struct fm10k_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct fm10k_mbx_fifo*) ; 
 scalar_t__ FUNC1 (struct fm10k_mbx_fifo*) ; 
 scalar_t__ FUNC2 (struct fm10k_mbx_fifo*) ; 
 scalar_t__ FUNC3 (struct fm10k_mbx_info*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fm10k_mbx_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct fm10k_hw*,struct fm10k_mbx_info*) ; 

__attribute__((used)) static void FUNC6(struct fm10k_hw *hw,
				struct fm10k_mbx_info *mbx, u16 head)
{
	u16 mbmem_len, len, ack = FUNC3(mbx, head, mbx->tail);
	struct fm10k_mbx_fifo *fifo = &mbx->tx;

	/* update number of bytes pulled and update bytes in transit */
	mbx->pulled += mbx->tail_len - ack;

	/* determine length of data to pull, reserve space for mbmem header */
	mbmem_len = mbx->mbmem_len - 1;
	len = FUNC2(fifo) - mbx->pulled;
	if (len > mbmem_len)
		len = mbmem_len;

	/* update tail and record number of bytes in transit */
	mbx->tail = FUNC4(mbx, len - ack);
	mbx->tail_len = len;

	/* drop pulled messages from the FIFO */
	for (len = FUNC1(fifo);
	     len && (mbx->pulled >= len);
	     len = FUNC1(fifo)) {
		mbx->pulled -= FUNC0(fifo);
		mbx->tx_messages++;
		mbx->tx_dwords += len;
	}

	/* Copy message out from the Tx FIFO */
	FUNC5(hw, mbx);
}