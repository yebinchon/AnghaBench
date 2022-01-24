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
struct list_head {int dummy; } ;
struct ath6kl_htc_credit_info {scalar_t__ cur_free_credits; scalar_t__ total_avail_credits; } ;
typedef  enum htc_credit_dist_reason { ____Placeholder_htc_credit_dist_reason } htc_credit_dist_reason ;

/* Variables and functions */
#define  HTC_CREDIT_DIST_ACTIVITY_CHANGE 129 
#define  HTC_CREDIT_DIST_SEND_COMPLETE 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath6kl_htc_credit_info*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath6kl_htc_credit_info*,struct list_head*) ; 

__attribute__((used)) static void FUNC3(struct ath6kl_htc_credit_info *cred_info,
				     struct list_head *ep_dist_list,
			      enum htc_credit_dist_reason reason)
{
	switch (reason) {
	case HTC_CREDIT_DIST_SEND_COMPLETE:
		FUNC2(cred_info, ep_dist_list);
		break;
	case HTC_CREDIT_DIST_ACTIVITY_CHANGE:
		FUNC1(cred_info, ep_dist_list);
		break;
	default:
		break;
	}

	FUNC0(cred_info->cur_free_credits > cred_info->total_avail_credits);
	FUNC0(cred_info->cur_free_credits < 0);
}