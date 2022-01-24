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
typedef  int u32 ;
struct TYPE_4__ {void* addr; } ;
struct bmi_cmd {TYPE_2__ set_app_start; void* id; } ;
struct TYPE_3__ {scalar_t__ done_sent; } ;
struct ath10k {TYPE_1__ bmi; } ;

/* Variables and functions */
 int BMI_SET_APP_START ; 
 int EBUSY ; 
 void* FUNC0 (int) ; 
 int FUNC1 (struct ath10k*,struct bmi_cmd*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,char*,...) ; 

int FUNC3(struct ath10k *ar, u32 address)
{
	struct bmi_cmd cmd;
	u32 cmdlen = sizeof(cmd.id) + sizeof(cmd.set_app_start);
	int ret;

	if (ar->bmi.done_sent) {
		FUNC2(ar, "bmi set start command disallowed\n");
		return -EBUSY;
	}

	cmd.id = FUNC0(BMI_SET_APP_START);
	cmd.set_app_start.addr = FUNC0(address);

	ret = FUNC1(ar, &cmd, cmdlen, NULL, NULL);
	if (ret) {
		FUNC2(ar, "unable to set start to the device:%d\n", ret);
		return ret;
	}

	return 0;
}