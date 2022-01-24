#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct net_device {int /*<<< orphan*/  irq; } ;
struct TYPE_10__ {scalar_t__ lword; } ;
struct TYPE_12__ {scalar_t__ lword; } ;
struct TYPE_11__ {scalar_t__ lword; } ;
struct TYPE_13__ {int /*<<< orphan*/  cons_block_virt; TYPE_1__ rcv_xmt_reg; TYPE_3__ cmd_rsp_reg; TYPE_2__ cmd_req_reg; } ;
typedef  int /*<<< orphan*/  PI_CONSUMER_BLOCK ;
typedef  TYPE_4__ DFX_board_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  PI_HOST_INT_K_DISABLE_ALL_INTS ; 
 int /*<<< orphan*/  PI_PDATA_A_RESET_M_SKIP_ST ; 
 int /*<<< orphan*/  PI_PDQ_K_REG_HOST_INT_ENB ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_4__* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 

__attribute__((used)) static int FUNC9(struct net_device *dev)
{
	DFX_board_t *bp = FUNC7(dev);

	FUNC0("In dfx_close...\n");

	/* Disable PDQ interrupts first */

	FUNC2(bp, PI_PDQ_K_REG_HOST_INT_ENB, PI_HOST_INT_K_DISABLE_ALL_INTS);

	/* Place adapter in DMA_UNAVAILABLE state by resetting adapter */

	(void) FUNC1(bp, PI_PDATA_A_RESET_M_SKIP_ST);

	/*
	 * Flush any pending transmit buffers
	 *
	 * Note: It's important that we flush the transmit buffers
	 *		 BEFORE we clear our copy of the Type 2 register.
	 *		 Otherwise, we'll have no idea how many buffers
	 *		 we need to free.
	 */

	FUNC4(bp);

	/*
	 * Clear Type 1 and Type 2 registers after adapter reset
	 *
	 * Note: Even though we're closing the adapter, it's
	 *       possible that an interrupt will occur after
	 *		 dfx_close is called.  Without some assurance to
	 *		 the contrary we want to make sure that we don't
	 *		 process receive and transmit LLC frames and update
	 *		 the Type 2 register with bad information.
	 */

	bp->cmd_req_reg.lword	= 0;
	bp->cmd_rsp_reg.lword	= 0;
	bp->rcv_xmt_reg.lword	= 0;

	/* Clear consumer block for the same reason given above */

	FUNC6(bp->cons_block_virt, 0, sizeof(PI_CONSUMER_BLOCK));

	/* Release all dynamically allocate skb in the receive ring. */

	FUNC3(bp);

	/* Clear device structure flags */

	FUNC8(dev);

	/* Deregister (free) IRQ */

	FUNC5(dev->irq, dev);

	return 0;
}