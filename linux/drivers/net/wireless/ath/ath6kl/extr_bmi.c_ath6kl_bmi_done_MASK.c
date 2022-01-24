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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int done_sent; } ;
struct ath6kl {TYPE_1__ bmi; } ;
typedef  int /*<<< orphan*/  cid ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_BMI ; 
 int /*<<< orphan*/  BMI_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (struct ath6kl*,int /*<<< orphan*/ *,int) ; 

int FUNC3(struct ath6kl *ar)
{
	int ret;
	u32 cid = BMI_DONE;

	if (ar->bmi.done_sent) {
		FUNC0(ATH6KL_DBG_BMI, "bmi done skipped\n");
		return 0;
	}

	ar->bmi.done_sent = true;

	ret = FUNC2(ar, (u8 *)&cid, sizeof(cid));
	if (ret) {
		FUNC1("Unable to send bmi done: %d\n", ret);
		return ret;
	}

	return 0;
}