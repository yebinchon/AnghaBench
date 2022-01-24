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
struct TYPE_3__ {void* value; void* addr; } ;
struct bmi_cmd {TYPE_1__ write_soc_reg; void* id; } ;
struct TYPE_4__ {scalar_t__ done_sent; } ;
struct ath10k {TYPE_2__ bmi; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_BMI ; 
 int BMI_WRITE_SOC_REGISTER ; 
 int EBUSY ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k*,int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC2 (struct ath10k*,struct bmi_cmd*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,char*,...) ; 

int FUNC4(struct ath10k *ar, u32 address, u32 reg_val)
{
	struct bmi_cmd cmd;
	u32 cmdlen = sizeof(cmd.id) + sizeof(cmd.write_soc_reg);
	int ret;

	FUNC1(ar, ATH10K_DBG_BMI,
		   "bmi write soc register 0x%08x val 0x%08x\n",
		   address, reg_val);

	if (ar->bmi.done_sent) {
		FUNC3(ar, "bmi write soc register command in progress\n");
		return -EBUSY;
	}

	cmd.id = FUNC0(BMI_WRITE_SOC_REGISTER);
	cmd.write_soc_reg.addr = FUNC0(address);
	cmd.write_soc_reg.value = FUNC0(reg_val);

	ret = FUNC2(ar, &cmd, cmdlen, NULL, NULL);
	if (ret) {
		FUNC3(ar, "Unable to write soc register to device: %d\n",
			    ret);
		return ret;
	}

	return 0;
}