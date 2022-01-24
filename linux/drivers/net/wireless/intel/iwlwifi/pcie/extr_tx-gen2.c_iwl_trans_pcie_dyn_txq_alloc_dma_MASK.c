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
struct iwlagn_scd_bc_tbl {int dummy; } ;
struct iwl_txq {int /*<<< orphan*/  wd_timeout; int /*<<< orphan*/  bc_tbl; } ;
struct iwl_trans {TYPE_1__* trans_cfg; } ;
struct iwl_gen3_bc_tbl {int dummy; } ;
struct TYPE_2__ {scalar_t__ device_family; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ IWL_DEVICE_FAMILY_22560 ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,char*) ; 
 int FUNC1 (struct iwl_trans*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_trans*,struct iwl_txq*) ; 
 int FUNC3 (struct iwl_trans*,struct iwl_txq*,int,int) ; 
 int FUNC4 (struct iwl_trans*,struct iwl_txq*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_txq*) ; 
 struct iwl_txq* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 

int FUNC8(struct iwl_trans *trans,
				     struct iwl_txq **intxq, int size,
				     unsigned int timeout)
{
	int ret;

	struct iwl_txq *txq;
	txq = FUNC6(sizeof(*txq), GFP_KERNEL);
	if (!txq)
		return -ENOMEM;
	ret = FUNC1(trans, &txq->bc_tbl,
				     (trans->trans_cfg->device_family >=
				      IWL_DEVICE_FAMILY_22560) ?
				     sizeof(struct iwl_gen3_bc_tbl) :
				     sizeof(struct iwlagn_scd_bc_tbl));
	if (ret) {
		FUNC0(trans, "Scheduler BC Table allocation failed\n");
		FUNC5(txq);
		return -ENOMEM;
	}

	ret = FUNC3(trans, txq, size, false);
	if (ret) {
		FUNC0(trans, "Tx queue alloc failed\n");
		goto error;
	}
	ret = FUNC4(trans, txq, size, false);
	if (ret) {
		FUNC0(trans, "Tx queue init failed\n");
		goto error;
	}

	txq->wd_timeout = FUNC7(timeout);

	*intxq = txq;
	return 0;

error:
	FUNC2(trans, txq);
	return ret;
}