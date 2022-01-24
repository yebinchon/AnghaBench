#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  result; } ;
union bmi_resp {TYPE_3__ execute; } ;
typedef  int u32 ;
struct TYPE_5__ {void* param; void* addr; } ;
struct bmi_cmd {TYPE_2__ execute; void* id; } ;
struct TYPE_4__ {scalar_t__ done_sent; } ;
struct ath10k {TYPE_1__ bmi; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_BMI ; 
 int BMI_EXECUTE ; 
 int EBUSY ; 
 int EIO ; 
 void* FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC3 (struct ath10k*,struct bmi_cmd*,int,union bmi_resp*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*,char*,...) ; 

int FUNC5(struct ath10k *ar, u32 address, u32 param, u32 *result)
{
	struct bmi_cmd cmd;
	union bmi_resp resp;
	u32 cmdlen = sizeof(cmd.id) + sizeof(cmd.execute);
	u32 resplen = sizeof(resp.execute);
	int ret;

	FUNC2(ar, ATH10K_DBG_BMI, "bmi execute address 0x%x param 0x%x\n",
		   address, param);

	if (ar->bmi.done_sent) {
		FUNC4(ar, "command disallowed\n");
		return -EBUSY;
	}

	cmd.id            = FUNC0(BMI_EXECUTE);
	cmd.execute.addr  = FUNC0(address);
	cmd.execute.param = FUNC0(param);

	ret = FUNC3(ar, &cmd, cmdlen, &resp, &resplen);
	if (ret) {
		FUNC4(ar, "unable to read from the device\n");
		return ret;
	}

	if (resplen < sizeof(resp.execute)) {
		FUNC4(ar, "invalid execute response length (%d)\n",
			    resplen);
		return -EIO;
	}

	*result = FUNC1(resp.execute.result);

	FUNC2(ar, ATH10K_DBG_BMI, "bmi execute result 0x%x\n", *result);

	return 0;
}