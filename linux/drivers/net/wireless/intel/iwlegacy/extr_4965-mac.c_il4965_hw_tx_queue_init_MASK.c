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
struct TYPE_2__ {int id; int dma_addr; } ;
struct il_tx_queue {TYPE_1__ q; } ;
struct il_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct il_priv*,int /*<<< orphan*/ ,int) ; 

int
FUNC2(struct il_priv *il, struct il_tx_queue *txq)
{
	int txq_id = txq->q.id;

	/* Circular buffer (TFD queue in DRAM) physical base address */
	FUNC1(il, FUNC0(txq_id), txq->q.dma_addr >> 8);

	return 0;
}