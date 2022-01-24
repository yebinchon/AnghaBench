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
struct sk_buff {int dummy; } ;
struct ath10k_htt {int /*<<< orphan*/  tx_lock; int /*<<< orphan*/  max_num_pending_tx; int /*<<< orphan*/  pending_tx; struct ath10k* ar; } ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_HTT ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct ath10k_htt *htt, struct sk_buff *skb)
{
	struct ath10k *ar = htt->ar;
	int ret;

	FUNC2(&htt->tx_lock);
	ret = FUNC1(&htt->pending_tx, skb, 0,
			htt->max_num_pending_tx, GFP_ATOMIC);
	FUNC3(&htt->tx_lock);

	FUNC0(ar, ATH10K_DBG_HTT, "htt tx alloc msdu_id %d\n", ret);

	return ret;
}