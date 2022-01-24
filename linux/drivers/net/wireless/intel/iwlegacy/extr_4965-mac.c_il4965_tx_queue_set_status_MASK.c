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
struct TYPE_2__ {int id; } ;
struct il_tx_queue {int sched_retry; TYPE_1__ q; } ;
struct il_priv {int /*<<< orphan*/  txq_ctx_active_msk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int IL49_SCD_QUEUE_STTS_REG_MSK ; 
 int IL49_SCD_QUEUE_STTS_REG_POS_ACTIVE ; 
 int IL49_SCD_QUEUE_STTS_REG_POS_SCD_ACK ; 
 int IL49_SCD_QUEUE_STTS_REG_POS_TXF ; 
 int IL49_SCD_QUEUE_STTS_REG_POS_WSL ; 
 int /*<<< orphan*/  FUNC2 (struct il_priv*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ *) ; 

void
FUNC4(struct il_priv *il, struct il_tx_queue *txq,
			   int tx_fifo_id, int scd_retry)
{
	int txq_id = txq->q.id;

	/* Find out whether to activate Tx queue */
	int active = FUNC3(txq_id, &il->txq_ctx_active_msk) ? 1 : 0;

	/* Set up and activate */
	FUNC2(il, FUNC1(txq_id),
		   (active << IL49_SCD_QUEUE_STTS_REG_POS_ACTIVE) |
		   (tx_fifo_id << IL49_SCD_QUEUE_STTS_REG_POS_TXF) |
		   (scd_retry << IL49_SCD_QUEUE_STTS_REG_POS_WSL) |
		   (scd_retry << IL49_SCD_QUEUE_STTS_REG_POS_SCD_ACK) |
		   IL49_SCD_QUEUE_STTS_REG_MSK);

	txq->sched_retry = scd_retry;

	FUNC0("%s %s Queue %d on AC %d\n", active ? "Activate" : "Deactivate",
	       scd_retry ? "BA" : "AC", txq_id, tx_fifo_id);
}