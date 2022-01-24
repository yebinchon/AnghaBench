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
struct timer_list {int dummy; } ;
struct TYPE_3__ {int hb_pending; scalar_t__ hb_misscnt; int /*<<< orphan*/  hb_poll; int /*<<< orphan*/  hb_timer; scalar_t__ seq_num; } ;
struct ath6kl {scalar_t__ state; TYPE_1__ fw_recovery; int /*<<< orphan*/  wmi; int /*<<< orphan*/  flag; } ;
struct TYPE_4__ {int /*<<< orphan*/  hb_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_FW_HB_RESP_FAILURE ; 
 scalar_t__ ATH6KL_HB_RESP_MISS_THRES ; 
 scalar_t__ ATH6KL_STATE_RECOVERY ; 
 int /*<<< orphan*/  RECOVERY_CLEANUP ; 
 struct ath6kl* ar ; 
 int /*<<< orphan*/  FUNC0 (struct ath6kl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 struct ath6kl* FUNC3 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 TYPE_2__ fw_recovery ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct timer_list *t)
{
	struct ath6kl *ar = FUNC3(ar, t, fw_recovery.hb_timer);
	int err;

	if (FUNC6(RECOVERY_CLEANUP, &ar->flag) ||
	    (ar->state == ATH6KL_STATE_RECOVERY))
		return;

	if (ar->fw_recovery.hb_pending)
		ar->fw_recovery.hb_misscnt++;
	else
		ar->fw_recovery.hb_misscnt = 0;

	if (ar->fw_recovery.hb_misscnt > ATH6KL_HB_RESP_MISS_THRES) {
		ar->fw_recovery.hb_misscnt = 0;
		ar->fw_recovery.seq_num = 0;
		ar->fw_recovery.hb_pending = false;
		FUNC0(ar, ATH6KL_FW_HB_RESP_FAILURE);
		return;
	}

	ar->fw_recovery.seq_num++;
	ar->fw_recovery.hb_pending = true;

	err = FUNC2(ar->wmi,
						ar->fw_recovery.seq_num, 0);
	if (err)
		FUNC1("Failed to send hb challenge request, err:%d\n",
			    err);

	FUNC4(&ar->fw_recovery.hb_timer, jiffies +
		  FUNC5(ar->fw_recovery.hb_poll));
}