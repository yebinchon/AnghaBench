#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct il_priv {int /*<<< orphan*/  lock; TYPE_3__* txq; scalar_t__ scd_base_addr; TYPE_1__* cfg; } ;
struct TYPE_5__ {int read_ptr; int write_ptr; } ;
struct TYPE_6__ {TYPE_2__ q; } ;
struct TYPE_4__ {int num_of_ampdu_queues; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int EINVAL ; 
 int IL49_FIRST_AMPDU_QUEUE ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  IL49_SCD_INTERRUPT_MASK ; 
 int /*<<< orphan*/  IL49_SCD_QUEUECHAIN_SEL ; 
 int IL49_SCD_QUEUE_CTX_REG1_WIN_SIZE_MSK ; 
 int IL49_SCD_QUEUE_CTX_REG1_WIN_SIZE_POS ; 
 int IL49_SCD_QUEUE_CTX_REG2_FRAME_LIMIT_MSK ; 
 int IL49_SCD_QUEUE_CTX_REG2_FRAME_LIMIT_POS ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int) ; 
 int SCD_FRAME_LIMIT ; 
 int SCD_WIN_SIZE ; 
 int /*<<< orphan*/  FUNC3 (struct il_priv*,int,int) ; 
 int FUNC4 (struct il_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct il_priv*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct il_priv*,TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct il_priv*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct il_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct il_priv*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC12(struct il_priv *il, int txq_id, int tx_fifo, int sta_id,
		      int tid, u16 ssn_idx)
{
	unsigned long flags;
	u16 ra_tid;
	int ret;

	if ((IL49_FIRST_AMPDU_QUEUE > txq_id) ||
	    (IL49_FIRST_AMPDU_QUEUE +
	     il->cfg->num_of_ampdu_queues <= txq_id)) {
		FUNC2("queue number out of range: %d, must be %d to %d\n",
			txq_id, IL49_FIRST_AMPDU_QUEUE,
			IL49_FIRST_AMPDU_QUEUE +
			il->cfg->num_of_ampdu_queues - 1);
		return -EINVAL;
	}

	ra_tid = FUNC0(sta_id, tid);

	/* Modify device's station table to Tx this TID */
	ret = FUNC4(il, sta_id, tid);
	if (ret)
		return ret;

	FUNC10(&il->lock, flags);

	/* Stop this Tx queue before configuring it */
	FUNC7(il, txq_id);

	/* Map receiver-address / traffic-ID to this queue */
	FUNC5(il, ra_tid, txq_id);

	/* Set this queue as a chain-building queue */
	FUNC8(il, IL49_SCD_QUEUECHAIN_SEL, (1 << txq_id));

	/* Place first TFD at idx corresponding to start sequence number.
	 * Assumes that ssn_idx is valid (!= 0xFFF) */
	il->txq[txq_id].q.read_ptr = (ssn_idx & 0xff);
	il->txq[txq_id].q.write_ptr = (ssn_idx & 0xff);
	FUNC3(il, txq_id, ssn_idx);

	/* Set up Tx win size and frame limit for this queue */
	FUNC9(il,
			  il->scd_base_addr +
			  FUNC1(txq_id),
			  (SCD_WIN_SIZE << IL49_SCD_QUEUE_CTX_REG1_WIN_SIZE_POS)
			  & IL49_SCD_QUEUE_CTX_REG1_WIN_SIZE_MSK);

	FUNC9(il,
			  il->scd_base_addr +
			  FUNC1(txq_id) + sizeof(u32),
			  (SCD_FRAME_LIMIT <<
			   IL49_SCD_QUEUE_CTX_REG2_FRAME_LIMIT_POS) &
			  IL49_SCD_QUEUE_CTX_REG2_FRAME_LIMIT_MSK);

	FUNC8(il, IL49_SCD_INTERRUPT_MASK, (1 << txq_id));

	/* Set up Status area in SRAM, map to Tx DMA/FIFO, activate the queue */
	FUNC6(il, &il->txq[txq_id], tx_fifo, 1);

	FUNC11(&il->lock, flags);

	return 0;
}