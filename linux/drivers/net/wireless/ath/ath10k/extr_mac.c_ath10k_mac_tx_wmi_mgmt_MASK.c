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
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct ath10k {int /*<<< orphan*/  data_lock; int /*<<< orphan*/  wmi_mgmt_tx_work; int /*<<< orphan*/  hw; struct sk_buff_head wmi_mgmt_tx_queue; } ;

/* Variables and functions */
 scalar_t__ ATH10K_MAX_NUM_MGMT_PENDING ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff_head*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct ath10k *ar, struct sk_buff *skb)
{
	struct sk_buff_head *q = &ar->wmi_mgmt_tx_queue;
	int ret = 0;

	FUNC4(&ar->data_lock);

	if (FUNC3(q) == ATH10K_MAX_NUM_MGMT_PENDING) {
		FUNC1(ar, "wmi mgmt tx queue is full\n");
		ret = -ENOSPC;
		goto unlock;
	}

	FUNC0(q, skb);
	FUNC2(ar->hw, &ar->wmi_mgmt_tx_work);

unlock:
	FUNC5(&ar->data_lock);

	return ret;
}