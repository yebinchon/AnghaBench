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
typedef  int u32 ;
struct TYPE_2__ {int id; int write_ptr; } ;
struct il_tx_queue {scalar_t__ need_update; TYPE_1__ q; } ;
struct il_priv {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_GP_CNTRL ; 
 int /*<<< orphan*/  CSR_GP_CNTRL_REG_FLAG_MAC_ACCESS_REQ ; 
 int /*<<< orphan*/  CSR_UCODE_DRV_GP1 ; 
 int CSR_UCODE_DRV_GP1_BIT_MAC_SLEEP ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  HBUS_TARG_WRPTR ; 
 int /*<<< orphan*/  S_POWER_PMI ; 
 int FUNC1 (struct il_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct il_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct il_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct il_priv*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC6(struct il_priv *il, struct il_tx_queue *txq)
{
	u32 reg = 0;
	int txq_id = txq->q.id;

	if (txq->need_update == 0)
		return;

	/* if we're trying to save power */
	if (FUNC5(S_POWER_PMI, &il->status)) {
		/* wake up nic if it's powered down ...
		 * uCode will wake up, and interrupt us again, so next
		 * time we'll skip this part. */
		reg = FUNC1(il, CSR_UCODE_DRV_GP1);

		if (reg & CSR_UCODE_DRV_GP1_BIT_MAC_SLEEP) {
			FUNC0("Tx queue %d requesting wakeup," " GP1 = 0x%x\n",
			       txq_id, reg);
			FUNC3(il, CSR_GP_CNTRL,
				   CSR_GP_CNTRL_REG_FLAG_MAC_ACCESS_REQ);
			return;
		}

		FUNC4(il, HBUS_TARG_WRPTR, txq->q.write_ptr | (txq_id << 8));

		/*
		 * else not in power-save mode,
		 * uCode will never sleep when we're
		 * trying to tx (during RFKILL, we're not trying to tx).
		 */
	} else
		FUNC2(il, HBUS_TARG_WRPTR, txq->q.write_ptr | (txq_id << 8));
	txq->need_update = 0;
}