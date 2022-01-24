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
struct bmi_cmd {TYPE_2__ lz_start; void* id; } ;
struct TYPE_3__ {scalar_t__ done_sent; } ;
struct ath10k {TYPE_1__ bmi; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_BMI ; 
 int BMI_LZ_STREAM_START ; 
 int EBUSY ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct ath10k*,struct bmi_cmd*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,char*) ; 

int FUNC4(struct ath10k *ar, u32 address)
{
	struct bmi_cmd cmd;
	u32 cmdlen = sizeof(cmd.id) + sizeof(cmd.lz_start);
	int ret;

	FUNC1(ar, ATH10K_DBG_BMI, "bmi lz stream start address 0x%x\n",
		   address);

	if (ar->bmi.done_sent) {
		FUNC3(ar, "command disallowed\n");
		return -EBUSY;
	}

	cmd.id            = FUNC0(BMI_LZ_STREAM_START);
	cmd.lz_start.addr = FUNC0(address);

	ret = FUNC2(ar, &cmd, cmdlen, NULL, NULL);
	if (ret) {
		FUNC3(ar, "unable to Start LZ Stream to the device\n");
		return ret;
	}

	return 0;
}