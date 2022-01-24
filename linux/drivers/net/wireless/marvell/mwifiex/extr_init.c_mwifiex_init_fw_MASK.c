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
typedef  size_t u8 ;
struct mwifiex_private {int dummy; } ;
struct mwifiex_adapter {size_t priv_num; void* hw_status; int /*<<< orphan*/  cmd_pending_q_lock; int /*<<< orphan*/  cmd_pending_q; struct mwifiex_private** priv; scalar_t__ mfg_mode; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 void* MWIFIEX_HW_STATUS_INITIALIZING ; 
 void* MWIFIEX_HW_STATUS_READY ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct mwifiex_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct mwifiex_adapter*) ; 
 int FUNC3 (struct mwifiex_private*) ; 
 int FUNC4 (struct mwifiex_adapter*) ; 
 int FUNC5 (struct mwifiex_private*,size_t,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct mwifiex_adapter *adapter)
{
	int ret;
	struct mwifiex_private *priv;
	u8 i, first_sta = true;
	int is_cmd_pend_q_empty;

	adapter->hw_status = MWIFIEX_HW_STATUS_INITIALIZING;

	/* Allocate memory for member of adapter structure */
	ret = FUNC1(adapter);
	if (ret)
		return -1;

	/* Initialize adapter structure */
	FUNC2(adapter);

	for (i = 0; i < adapter->priv_num; i++) {
		if (adapter->priv[i]) {
			priv = adapter->priv[i];

			/* Initialize private structure */
			ret = FUNC3(priv);
			if (ret)
				return -1;
		}
	}
	if (adapter->mfg_mode) {
		adapter->hw_status = MWIFIEX_HW_STATUS_READY;
		ret = -EINPROGRESS;
	} else {
		for (i = 0; i < adapter->priv_num; i++) {
			if (adapter->priv[i]) {
				ret = FUNC5(adapter->priv[i],
							   first_sta, true);
				if (ret == -1)
					return -1;

				first_sta = false;
			}



		}
	}

	FUNC6(&adapter->cmd_pending_q_lock);
	is_cmd_pend_q_empty = FUNC0(&adapter->cmd_pending_q);
	FUNC7(&adapter->cmd_pending_q_lock);
	if (!is_cmd_pend_q_empty) {
		/* Send the first command in queue and return */
		if (FUNC4(adapter) != -1)
			ret = -EINPROGRESS;
	} else {
		adapter->hw_status = MWIFIEX_HW_STATUS_READY;
	}

	return ret;
}