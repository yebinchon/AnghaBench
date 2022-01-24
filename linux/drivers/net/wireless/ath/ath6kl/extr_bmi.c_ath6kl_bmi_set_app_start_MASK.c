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
typedef  size_t u32 ;
typedef  int u16 ;
struct TYPE_2__ {int max_cmd_size; int /*<<< orphan*/ * cmd_buf; scalar_t__ done_sent; } ;
struct ath6kl {TYPE_1__ bmi; } ;
typedef  int /*<<< orphan*/  cid ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_BMI ; 
 size_t BMI_SET_APP_START ; 
 int EACCES ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (struct ath6kl*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int FUNC6(struct ath6kl *ar, u32 addr)
{
	u32 cid = BMI_SET_APP_START;
	int ret;
	u32 offset;
	u16 size;

	if (ar->bmi.done_sent) {
		FUNC2("bmi done sent already, cmd %d disallowed\n", cid);
		return -EACCES;
	}

	size = sizeof(cid) + sizeof(addr);
	if (size > ar->bmi.max_cmd_size) {
		FUNC0(1);
		return -EINVAL;
	}
	FUNC5(ar->bmi.cmd_buf, 0, size);

	FUNC1(ATH6KL_DBG_BMI, "bmi set app start: addr: 0x%x\n", addr);

	offset = 0;
	FUNC4(&(ar->bmi.cmd_buf[offset]), &cid, sizeof(cid));
	offset += sizeof(cid);
	FUNC4(&(ar->bmi.cmd_buf[offset]), &addr, sizeof(addr));
	offset += sizeof(addr);

	ret = FUNC3(ar, ar->bmi.cmd_buf, offset);
	if (ret) {
		FUNC2("Unable to write to the device: %d\n", ret);
		return ret;
	}

	return 0;
}