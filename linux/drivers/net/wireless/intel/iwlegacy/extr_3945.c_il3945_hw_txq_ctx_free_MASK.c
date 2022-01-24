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
struct TYPE_2__ {int max_txq_num; } ;
struct il_priv {TYPE_1__ hw_params; scalar_t__ txq; } ;

/* Variables and functions */
 int IL39_CMD_QUEUE_NUM ; 
 int /*<<< orphan*/  FUNC0 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct il_priv*,int) ; 

void
FUNC3(struct il_priv *il)
{
	int txq_id;

	/* Tx queues */
	if (il->txq) {
		for (txq_id = 0; txq_id < il->hw_params.max_txq_num; txq_id++)
			if (txq_id == IL39_CMD_QUEUE_NUM)
				FUNC0(il);
			else
				FUNC2(il, txq_id);
	}

	/* free tx queue structure */
	FUNC1(il);
}