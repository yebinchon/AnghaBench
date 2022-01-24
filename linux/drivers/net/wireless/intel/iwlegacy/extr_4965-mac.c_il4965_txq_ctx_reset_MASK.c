#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int max_txq_num; } ;
struct TYPE_3__ {int dma; } ;
struct il_priv {TYPE_2__ hw_params; int /*<<< orphan*/  lock; TYPE_1__ kw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FH49_KW_MEM_ADDR_REG ; 
 int /*<<< orphan*/  FUNC0 (struct il_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct il_priv*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct il_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void
FUNC5(struct il_priv *il)
{
	int txq_id;
	unsigned long flags;

	FUNC3(&il->lock, flags);

	/* Turn off all Tx DMA fifos */
	FUNC0(il, 0);
	/* Tell NIC where to find the "keep warm" buffer */
	FUNC2(il, FH49_KW_MEM_ADDR_REG, il->kw.dma >> 4);

	FUNC4(&il->lock, flags);

	/* Alloc and init all Tx queues, including the command queue (#4) */
	for (txq_id = 0; txq_id < il->hw_params.max_txq_num; txq_id++)
		FUNC1(il, txq_id);
}