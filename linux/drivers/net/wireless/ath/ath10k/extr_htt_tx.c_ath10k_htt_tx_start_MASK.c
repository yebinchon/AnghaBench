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
struct ath10k_htt {int tx_mem_allocated; int /*<<< orphan*/  pending_tx; int /*<<< orphan*/  tx_lock; int /*<<< orphan*/  max_num_pending_tx; struct ath10k* ar; } ;
struct TYPE_2__ {scalar_t__ dev_type; } ;
struct ath10k {TYPE_1__ bus_param; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_BOOT ; 
 scalar_t__ ATH10K_DEV_TYPE_HL ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ath10k_htt*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct ath10k_htt *htt)
{
	struct ath10k *ar = htt->ar;
	int ret;

	FUNC0(ar, ATH10K_DBG_BOOT, "htt tx max num pending tx %d\n",
		   htt->max_num_pending_tx);

	FUNC4(&htt->tx_lock);
	FUNC3(&htt->pending_tx);

	if (htt->tx_mem_allocated)
		return 0;

	if (ar->bus_param.dev_type == ATH10K_DEV_TYPE_HL)
		return 0;

	ret = FUNC1(htt);
	if (ret)
		goto free_idr_pending_tx;

	htt->tx_mem_allocated = true;

	return 0;

free_idr_pending_tx:
	FUNC2(&htt->pending_tx);

	return ret;
}