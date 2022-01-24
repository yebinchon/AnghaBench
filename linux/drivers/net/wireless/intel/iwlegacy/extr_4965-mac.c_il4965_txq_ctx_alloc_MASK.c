#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int dma; } ;
struct TYPE_4__ {int max_txq_num; int /*<<< orphan*/  scd_bc_tbls_size; } ;
struct il_priv {TYPE_2__ scd_bc_tbls; TYPE_2__ kw; TYPE_1__ hw_params; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FH49_KW_MEM_ADDR_REG ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  IL_KW_SIZE ; 
 int FUNC1 (struct il_priv*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct il_priv*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct il_priv*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct il_priv*) ; 
 int FUNC6 (struct il_priv*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct il_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

int
FUNC10(struct il_priv *il)
{
	int ret, txq_id;
	unsigned long flags;

	/* Free all tx/cmd queues and keep-warm buffer */
	FUNC3(il);

	ret =
	    FUNC1(il, &il->scd_bc_tbls,
				 il->hw_params.scd_bc_tbls_size);
	if (ret) {
		FUNC0("Scheduler BC Table allocation failed\n");
		goto error_bc_tbls;
	}
	/* Alloc keep-warm buffer */
	ret = FUNC1(il, &il->kw, IL_KW_SIZE);
	if (ret) {
		FUNC0("Keep Warm allocation failed\n");
		goto error_kw;
	}

	/* allocate tx queue structure */
	ret = FUNC5(il);
	if (ret)
		goto error;

	FUNC8(&il->lock, flags);

	/* Turn off all Tx DMA fifos */
	FUNC4(il, 0);

	/* Tell NIC where to find the "keep warm" buffer */
	FUNC7(il, FH49_KW_MEM_ADDR_REG, il->kw.dma >> 4);

	FUNC9(&il->lock, flags);

	/* Alloc and init all Tx queues, including the command queue (#4/#9) */
	for (txq_id = 0; txq_id < il->hw_params.max_txq_num; txq_id++) {
		ret = FUNC6(il, txq_id);
		if (ret) {
			FUNC0("Tx %d queue init failed\n", txq_id);
			goto error;
		}
	}

	return ret;

error:
	FUNC3(il);
	FUNC2(il, &il->kw);
error_kw:
	FUNC2(il, &il->scd_bc_tbls);
error_bc_tbls:
	return ret;
}